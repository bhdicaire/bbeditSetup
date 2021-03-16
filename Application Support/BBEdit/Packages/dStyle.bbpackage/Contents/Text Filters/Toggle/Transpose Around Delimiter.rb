#!/usr/bin/ruby
print ARGF.read.gsub(/(.+?)(\s?[\\\/\|\-,+<>~=:;«»‹›–—]+\s?)(.+)/,  '\3\2\1')

