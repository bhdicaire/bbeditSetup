#!/usr/bin/perl
# 

# HELP to get the parent directory of a file or directory: http://www.egtry.com/perl/file/parent
# HELP to List all files that match a filename pattern: http://alvinalexander.com/blog/post/perl/generate-all-html-files-in-directory

use strict;
use File::Basename;
use Cwd;
use Try::Tiny;

my $fullpath = $ENV{'BB_DOC_PATH'};

if($fullpath eq "") {
  print "Your document has no path. Please save and run this script afterwards."
} 
else {
  try {
    my $file = basename($fullpath);
    my $ercdir = dirname($fullpath);    
    my $ercfile = 0;
    my $i = 0;
    
    while (($i <= 5) && ($ercfile == 0)) {
      $ercdir=dirname($ercdir);
      opendir(DIR, "$ercdir");
      my @files = grep(/\.eslintrc$/,readdir(DIR));
      closedir(DIR);
    
      foreach my $file (@files) {
         if ($file == ".eslintrc") {
          $ercfile = $ercdir . "/.eslintrc";
         } # end of if
      } # end of foreach
      $i++;
    } # end of while
    
    # plain regexp for eslint unix formatter: ((.+?):(\d+):((\d+):)?\s+(.*)\s\[([WE].*))$
    # bbresults cmd plain: bbresults --pattern "(?P<file>.+?):(?P<line>\d+):((?P<col>\d+):)?\s+(?P<msg>.*)\s\[(?P<type>[WE].*)$"
    my $runcmd = "/usr/local/bin/eslint -f unix -c $ercfile $fullpath | bbresults -w --pattern " . '"(?P<file>.+?):(?P<line>\d+):((?P<col>\d+):)?\s+(?P<msg>.*)\s\[(?P<type>[WE].*)$"';
    system($runcmd);    
  } catch {
    warn "caught error: $_";
  };
} # end of else
