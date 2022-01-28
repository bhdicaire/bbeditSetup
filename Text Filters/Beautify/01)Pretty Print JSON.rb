#!/usr/bin/env ruby

require 'json'

v = JSON.parse($stdin.read)
print JSON.pretty_generate(v)
