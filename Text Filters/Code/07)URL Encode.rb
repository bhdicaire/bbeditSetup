#!/usr/bin/env ruby

require 'cgi'

print CGI::escape($stdin.read)
