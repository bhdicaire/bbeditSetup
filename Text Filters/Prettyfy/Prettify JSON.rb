#!/usr/bin/env ruby

# This is here for prettifying JSON because I don't
# like to parse things by eye.

require 'json'

orig = ARGF.read

print JSON.pretty_unparse JSON.parse orig