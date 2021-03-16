#!/usr/bin/ruby
ARGF.set_encoding(Encoding::UTF_8)
print ARGF.read.gsub(/^(\s*)(\d+\.? )?(\s*)([^\n\r]+)/, '\1- \3\4')
