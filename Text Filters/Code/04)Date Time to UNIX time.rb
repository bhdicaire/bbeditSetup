#!/usr/bin/env ruby

require 'date'

timestamp = $stdin.read
$stdout.write DateTime.parse(timestamp).to_time.to_i