#!/usr/bin/perl

# Make sure Text::Autoformat is installed; if in doubt, do this on the
# command line:
#   cpan Text::Autoformat

use strict;
use Digest::MD5;

my $ctx = Digest::MD5->new;
while (<>) {
	$ctx->add($_);
}
print $ctx->digest;
