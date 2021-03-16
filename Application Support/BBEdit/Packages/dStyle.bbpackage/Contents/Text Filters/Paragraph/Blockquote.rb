#!/usr/bin/env ruby
# encoding: utf-8

if RUBY_VERSION.to_f > 1.9
	Encoding.default_external = Encoding::UTF_8
	Encoding.default_internal = Encoding::UTF_8
end

ARGF.each do |line|
	quote = ">"
	tabs = line.scan(/(\t|\s{4})/)
	tabs.each {|m|
		quote += ">"
	} unless tabs.nil?
	puts line =~ /^\s*$/ ? "\n" : "#{quote} #{line.strip}"
end