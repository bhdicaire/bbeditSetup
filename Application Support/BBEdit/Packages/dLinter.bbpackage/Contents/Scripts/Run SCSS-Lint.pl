#! /usr/bin/perl
#

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
    my $slcdir = dirname($fullpath);    
    my $slconfig = 0;
    my $i = 0;
    
    while (($i <= 5) && ($slconfig == 0)) {
      $slcdir=dirname($slcdir);
      opendir(DIR, "$slcdir");
      my @files = grep(/\.scss-lint.yml$/,readdir(DIR));
      closedir(DIR);
    
      foreach my $file (@files) {
         if ($file == ".scss-lint.yml") {
          $slconfig = $slcdir . "/.scss-lint.yml";
         } # end of if
      } # end of foreach
      $i++;
    } # end of while
    
    if($slconfig != 0) {
      my $runcmd = "/usr/local/bin/scss-lint -c $slconfig $fullpath | /usr/local/bin/bbresults -e --pattern " . '"(?P<file>.+?):(?P<line>\d+):(?P<col>\d+)\s+\[(?P<type>[WE])\]\s+(?P<msg>.*)$"';
      system($runcmd);   
    }
    else {
      my $runcmd = "/usr/local/bin/scss-lint $fullpath | /usr/local/bin/bbresults -e --pattern " . '"(?P<file>.+?):(?P<line>\d+):(?P<col>\d+)\s+\[(?P<type>[WE])\]\s+(?P<msg>.*)$"';
      system($runcmd);   
    }
  } catch {
    warn "caught error: $_";
  };
} # end of else



# FYI
#
# PLAIN Regexp: (.+?):(\d+):(\d+)\s+\[([WE])\]\s+(.*)$
#
# Plain bash command: 
# #!/bin/bash
# /usr/local/bin/scss-lint "$BB_DOC_PATH" | bbresults -e --pattern "(?P<file>.+?):(?P<line>\d+):(?P<col>\d+)\s+\[(?P<type>[WE])\]\s+(?P<msg>.*)$"
