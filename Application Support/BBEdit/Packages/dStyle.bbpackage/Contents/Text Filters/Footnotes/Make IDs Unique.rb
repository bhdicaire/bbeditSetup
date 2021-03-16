#!/usr/bin/env ruby
# encoding: utf-8

if RUBY_VERSION.to_f > 1.9
	Encoding.default_external = Encoding::UTF_8
	Encoding.default_internal = Encoding::UTF_8
	input = STDIN.read.force_encoding('utf-8')
else
	input = STDIN.read
end

random = Time.now.strftime('%s')
input.scan(/\[\^(.*?)\]/).uniq.each {|mark|
	input.gsub!(/\^#{mark[0]}/,"^#{random}-#{mark[0]}")
}
print input
