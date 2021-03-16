#!/usr/bin/env ruby
require 'csv'

# md - Tables - Create from CSV
# v1.1 2016-08-17
# From the Markdown Service Tools <http://brettterpstra.com/projects/markdown-service-tools/>
# Converts CSV style input to MultiMarkdown tables

# Changelog
# 1.1:  Fixed error when line ended with whitespace in middle of input
#       Cleaner exit when input parsing fails

# Tables "cleaned" automatically
# Use CSV formatting, cells separated by commas
#   - Two commas in a row creates a blank cell
#   - No trailing comma
#   - To use a comma within a cell, surround the cell contents in double quotes
#   - Whitespace surrounding cell data is generally ignored
# First row (required) should be column headers
#   - Headers are always centered in output
# Second row (optional) should use <, >, and = (only) to define left, right, and center column justification
#   - Must contain the same number of cells as the longest row
#   - Defaults to centered if row is omitted
# Empty (blank) rows are stripped
#   - To force an empty row, use a single comma
#   - To force a single-cell empty row, use >> alone on the line
# To make a cell span multiple columns, use a single > in the following cell(s)
#  e.g.
#      one,>,two,>,>
#  creates:
#      |  one  ||  two  |||
# A line beginning with == at the beginning or the end of the CSV input will create a table caption


# Example input
#
# ==Title
# one, "two, and a half", three and a quarter
# >, =, =, =, <
# four, five,,, six
# hell, hath, no, fury

def class_exists?(class_name)
  klass = Module.const_get(class_name)
  return klass.is_a?(Class)
rescue NameError
  return false
end

if class_exists? 'Encoding'
  Encoding.default_external = Encoding::UTF_8 if Encoding.respond_to?('default_external')
  Encoding.default_internal = Encoding::UTF_8 if Encoding.respond_to?('default_internal')
end

begin
  input = STDIN.read.strip.force_encoding('utf-8')
rescue
  input = STDIN.read.strip
end

class Array
  def alignment_row?
    alignment_chars = ["<",">","="]
    chars = self.uniq.strip_cells
    is_align = true
    chars.each do |c|
      is_align = false unless alignment_chars.include?(c)
    end
    return is_align
  end

  def to_aligmnent_row(counts)
    result = []
    self.each_with_index do |cell, i|
      output = case cell
      when '<'
        ':'.ljust(counts[i],'-')
      when '='
        ':'.ljust(counts[i]-1,'-') + ':'
      when '>'
        ':'.rjust(counts[i],'-')
      end
      result.push(output)
    end

    '| ' + result.join(' | ') + ' |'
  end

  def to_header_row(counts, max_cells)
    output = "|"
    self.each_with_index do |cell, i|
      output += cell.center(counts[i] + 2," ") + "|"
    end
    if self.length < max_cells
      counter = self.length
      while counter < counts.length
        output += " " + "".ljust(counts[counter]," ") + ' |'
        counter += 1
      end
    end
    output
  end

  def strip_cells
    self.map! {|cell|
      unless cell.nil?
        cell.strip
      else
        "     "
      end
    }
  end

  def strip_cells!
    replace(strip_cells)
  end

  def longest_row
    count = 0
    self.each do |row|
      l = row.length
      count = l if l > count
    end
    count
  end

  def measure_cells
    cell_count = self.longest_row
    counts = Array.new(cell_count, 5)
    self.each do |row|
      row.each_with_index do |cell, i|
        if cell.nil?
          counts[i] ||= 5
        elsif cell.length > counts[i]
          counts[i] = cell.length
        end
      end
    end
    counts
  end

  def pad_rows(counts,alignment)
    output = self.dup
    output.map!.with_index do |cell, i|
      case alignment[i]
      when nil?
        ''.ljust(counts[i],' ')
      when '<'
        cell.ljust(counts[i],' ')
      when '='
        cell.center(counts[i],' ')
      when '>'
        cell.rjust(counts[i],' ')
      end
    end
  end

  def pad_rows!(counts,alignment)
    replace(pad_rows(counts,alignment))
  end
end

class String
  def pad_cell(padding, alignment, char=" ")
    case alignment
    when 'left'
      return self.ljust(padding,char)
    when 'right'
      return self.rjust(padding,char)
    else
      return self.center(padding,char)
    end
  end

  def csv_quotes
    self.gsub(/,\s+"/,',"').gsub(/"\s+,/,'",')
  end
end

def process(input)
  rows = []
  title = nil
  header = []

  input.each_line do |line|
    if line =~ /^\s*==\s*\w+/
      title = line.sub(/^\s*==\s*/,'').strip
    else
      row = line.csv_quotes.strip.parse_csv.strip_cells
      next if row.join('') == ''
      rows.push(row)
    end
  end

  if rows.length < 2 || rows[0].nil?
    $stderr.puts "Failed parsing CSV input"
    print input
    Process.exit 1
  end

  max_cells = rows.longest_row
  counts = rows.measure_cells

  header = rows.slice!(0)

  if rows[0].alignment_row?
    alignments = rows.slice!(0)
  else
    alignments = Array.new(max_cells,'=')
  end

  if alignments.length != max_cells
    $stderr.puts "Alignment row has wrong number of cells"
    print input
    Process.exit 1
  end

  $stdout.puts header.to_header_row(counts, max_cells)
  $stdout.puts alignments.to_aligmnent_row(counts)

  rows.each_with_index do |row, i|
    out = ''
    if row.join(',').strip =~ /^>>$/
      out = '|'
      counts.length.times do
        out += '|'
      end
    else
      row.pad_rows!(counts, alignments)
      out = '| ' + row.join(' | ') + ' |'
      if row.length < max_cells
        counter = row.length
        while counter < counts.length
          out += " " + "".ljust(counts[counter]," ") + ' |'
          counter += 1
        end
      end
    end
    out.gsub!(/(\|\s*>\s*)+/) {|m|
      len = m.length
      pipes = m.scan(/\|/).join
      pipes.rjust(m.length," ")
    }
    $stdout.puts out

  end

  $stdout.puts "[#{title}]" if title
end

process(input)
