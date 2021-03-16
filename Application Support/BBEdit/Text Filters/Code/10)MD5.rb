#!/usr/bin/env ruby

require 'digest'

print Digest::MD5.hexdigest($stdin.read)
