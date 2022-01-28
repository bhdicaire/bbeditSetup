#!/usr/bin/perl

# Make sure Text::Autoformat is installed; if in doubt, do this on the
# command line:
#   cpan Text::Autoformat

use strict;
use Text::Autoformat qw(autoformat break_TeX);

# Read in all data.
# TODO: This could be a problem for large input data. So what we really
# should do is to read everything until we find an empty  line. Then
# invoke autoformat on what we read so far, and output its result. Then
# go on.
my $rawtext;
while (<>) {
	$rawtext .= $_;
}

# Format it and output it again
print autoformat $rawtext, { justify => 'full', all=>1, right => 70 };


# TODO:
# Use TeX::Hyphen module's hyphenation (module must be installed)
#    use Text::Autoformat qw(autoformat break_TeX);
#    $tidied = autoformat($messy, {break=>break_TeX});
