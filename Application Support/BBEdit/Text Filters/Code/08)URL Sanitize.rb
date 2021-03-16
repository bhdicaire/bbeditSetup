#!/usr/bin/env ruby

require 'uri'

ARGF.each_line do |line|
  begin
    print URI.parse(URI.escape(line.strip))
  rescue
    print "## invalid URI: '#{line.strip}' ##"
  end
  unless ARGF.eof?
    print "\n"
  end
end
