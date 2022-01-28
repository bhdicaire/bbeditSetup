#!/usr/bin/env ruby

timestamp = $stdin.read.to_i
$stdout.write Time.at(timestamp).utc