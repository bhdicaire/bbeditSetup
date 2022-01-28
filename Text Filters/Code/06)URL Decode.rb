#!/usr/bin/env ruby

require 'cgi'

print CGI::unescape($stdin.read)
