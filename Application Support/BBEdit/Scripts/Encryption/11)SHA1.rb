#!/usr/bin/env ruby

require 'digest'

print Digest::SHA1.hexdigest($stdin.read)
