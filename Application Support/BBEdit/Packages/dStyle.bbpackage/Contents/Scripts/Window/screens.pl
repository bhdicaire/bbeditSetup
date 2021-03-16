#!/usr/bin/perl

use strict;
use warnings;

# change to anything for debug print output
my $debug = 0;

my $rawInput;

# can pass in number of screens, otherwise assumed to be 1
my $numScreens = 1;
if ($#ARGV == 0) {
  ($numScreens) = @ARGV;
}

open($rawInput, '-|', 'defaults read /Library/Preferences/com.apple.windowserver') or die $!;

my $id = "nil";
my $height = "nil";
my $originX = "nil";
my $originY = "nil";
my $width = "nil";
my $unit = "nil";
my $i = 0;

my %screens;

while (my $line = <$rawInput>) {
  if ($line =~ m/^\s+{\s+$/) {
    if ($id ne "nil") {
      if (exists $screens{$id}) {
        # repeated ID, debug log
        if ($debug) {
          print "$id: ".$width."x$height at $originX,$originY (duplicate)\n";
        }
      } else {
        # save record in hash
        $screens{$id}{"height"} = $height;
        $screens{$id}{"originX"} = $originX;
        $screens{$id}{"originY"} = $originY;
        $screens{$id}{"width"} = $width;
        $screens{$id}{"unit"} = $unit;
 
        # starting new record, reset all
        $id = "nil";
        $height = "nil";
        $originX = "nil";
        $originY = "nil";
        $width = "nil";
        $unit = "nil";
        $i = $i + 1;
      }
    }
  } elsif (($line =~ m/^\s+DisplayID = "?([\-0-9]+);/) && ($id eq "nil")) {
    if ($debug) { print "ID: ".$1."\n"; }
    $id = $1;
  } elsif (($line =~ m/^\s+Height = "?([\-0-9]+);/) && ($height eq "nil")) {
    if ($debug) { print "Height: ".$1."\n"; }
    $height = $1;
  } elsif (($line =~ m/^\s+OriginX = "?([\-0-9]+)"?;/) && ($originX eq "nil")) {
    if ($debug) { print "OriginX: ".$1."\n"; }
    $originX = $1;
  } elsif (($line =~ m/^\s+OriginY = "?([\-0-9]+)"?;/) && ($originY eq "nil")) {
    if ($debug) { print "OriginY: ".$1."\n"; }
    $originY = $1;
  } elsif (($line =~ m/^\s+Width = "?([\-0-9]+)"?;/) && ($width eq "nil")) {
    if ($debug) { print "Width: ".$1."\n"; }
    $width = $1;
  } elsif (($line =~ m/^\s+Unit = "?([\-0-9]+)"?;/) && ($unit eq "nil")) {
    if ($debug) { print "Unit: ".$1."\n"; }
    $unit = $1;
  }
  if (($i == $numScreens) && ($id ne "nil") && ($height ne "nil") && ($originX ne "nil") && ($originY ne "nil") && ($width ne "nil") && ($unit ne "nil")) { 
    last;
  }
}

close $rawInput;


# output results
foreach my $screen (keys %screens) {
  print "$screens{$screen}{'unit'},$screens{$screen}{'width'},$screens{$screen}{'height'},$screens{$screen}{'originX'},$screens{$screen}{'originY'}\n";
  
  if ($debug) {
    print $screen.":\n";
    foreach my $value (sort keys %{ $screens{$screen} }) {
      print "  $value:$screens{$screen}{$value}\n";
    }
  }
}


