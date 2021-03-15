#!/usr/bin/env ruby

require 'digest'

print Digest::SHA2.hexdigest($stdin.read)
