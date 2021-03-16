#! /usr/bin/env ruby
# encoding: UTF-8

# I use this to prettify HTML, which is busy at the best of times.

original = ARGF.readlines.join

require 'nokogiri'

# see http://stackoverflow.com/a/32291792/335847
Nokogiri::XML::Node.class_eval do
  # Print every Node by default (will be overridden by CharacterData)
  define_method :should_print? do
    true
  end

  # Duplicate this node, replace the contents of the duplicated node with a
  # newline. With this content substitution, the #to_s method conveniently
  # returns a string with the opening tag (e.g. `<a href="foo">`) on the first
  # line and the closing tag on the second (e.g. `</a>`, provided that the
  # current node is not a self-closing tag).
  #
  # Now, print the open tag preceded by the correct amount of indentation, then
  # recursively print this node's children (with extra indentation), and then
  # print the close tag (if there is a closing tag)
  define_method :print do |indent=0|
    duplicate = self.dup
    duplicate.content = "\n"
    open_tag, close_tag = duplicate.to_s.split("\n")

    puts (" " * indent) + open_tag
    self.children.select(&:should_print?).each { |child| child.print(indent + 2) }
    puts (" " * indent) + close_tag if close_tag
  end
end

Nokogiri::XML::CharacterData.class_eval do
  # Only print CharacterData if there's non-whitespace content
  define_method :should_print? do
    content =~ /\S+/
  end

  # Replace all consecutive whitespace characters by a single space; precede the
  # outut by a certain amount of indentation; print this text.
  define_method :print do |indent=0|
    puts (" " * indent) + to_s.strip.sub(/\s+/, ' ')
  end
end

#doc = Nokogiri::HTML(original)
doc = Nokogiri::XML(original,&:noblanks)

# print doc.elements.each {|elem| elem.print }
doc.elements.last.print
