#!/usr/bin/perl

###########################################################
# Introducing non-breaking spaces into poetic lines
#     for better EPUB formatting.
# An example script.
# NB! It is a sample for the simple cases and it does not
#     handle poetry with complex predefined formatting.
#
# Copyright © 2011 Anton Bryl
# Source: http://blog.epubbooks.com/898/formatting-poetry-for-small-screens
#
##########################################################

use strict;

########################################
# The lists of words in some categories
#   may be incomplete.

my $THRESHOLD_LENGTH = 25;

my $determiners = { "a" => 1, "an" => 1, "the" => 1, "this" => 1,
                    "these" => 1, "those" => 1, "that" => 1 };
my $conjunctions = { "and" => 1, "or" => 1, "but" => 1, "either" => 1,
                     "neither" => 1, "nor" => 1, "whether" => 1,
                     "if" => 1, "then" => 1, "else" => 1 };
my $interrogative = { "why" => 1, "who" => 1, "what" => 1, "how" => 1,
                      "where" => 1, "when" => 1, "whom" => 1,
                      "whose" => 1};

# the word "not" is not good for processing in this way
my $negation = { "no" => 1 };

my $prepositions = { "at" => 1, "to" => 1, "from" => 1, "in" => 1,
                     "of" => 1, "through" => 1, "about" => 1, "on" => 1,
                     "with" => 1, "without" => 1, "until" => 1,
                     "after" => 1, "before" => 1, "beneath" => 1};

#######################################

# global array which at each moment hold
# the info on the currently processed line
my @array;      # tokens
my @types;      # token types

while (<>)
{
 chomp;
 if ($_ =~ /^\s*$/)
 {
  print "$_\n";
  next;
 }
 my @chararray = split(//,$_);
 @array = ();
 @types = ();

 ########################################
 # Convert string into an array of tokens
 #  and an array of token types
 #####
 my $currentCharType = -1;
 my $curStr = "";
 for (my $i = 0; $i <= $#chararray; ++$i)
 {
  my $newCharType = -1;
  if ($chararray[$i] =~ /[\s\xa0]/) { $newCharType = 0; } # space
  elsif ($chararray[$i] =~ /[,\.\?\-!;:–—\(\)]/) {
   $newCharType = 1;  # punctuation
  }
  else { $newCharType = 2; } # a part of a word

  if ($newCharType == $currentCharType) { $curStr .= $chararray[$i]; }
  else
  {
   if ($currentCharType != -1) {
    push @array, $curStr; push @types, $currentCharType;
   }
   $curStr = $chararray[$i];
   $currentCharType = $newCharType;
  }
 }
 if ($currentCharType != 0) # no spaces in the end
 {
  push @array, $curStr;
  push @types, $currentCharType;
 }
 ############################################

 # all initial spaces are non-breaking
 ## I don’t think I need this bit. Some non-breaking spaces such as names are better determined manually so I don’t want this script to strip them out
 if ($types[0] == 0)
 {
  $array[0] =~ s/\s/\xa0/g;
 }

 # all non-initial spaces are single;
 # no pre-inforced non-breaking spaces
 for (my $i = 1; $i <= $#array; ++$i)
 {
  if ($types[$i] == 0)
  {
   $array[$i] = " ";
  }
 }

 #####################################################
 #####################################################
 # Apply rules

 #####################################################
 # apply rule 1 : no breaks before dashes.
 # starting search for dashes-following-spaces from the item [2]
 # in the list (initial spaces, if any, are non-breaking already).
 for (my $i = 2; $i <= $#array; ++$i)
 {
  if ($types[$i - 1] != 0) { next; }
  if ($array[$i] !~ /^[-–—]+$/) { next; }
  if (eligible($i - 1)) { $array[$i - 1] = "\xa0"};
 }

 #####################################################
 # apply rule 2 : join together the portion after the last
 # punctuation-followed-by-a-space.
 # start searching backward from the last-but-two token
 for (my $i = $#array - 1; $i > 0; --$i)
 {
  if (($types[$i] != 1) || ($types[$i + 1] != 0)) { next; }

  $i += 2; # the position of the first non-space token after the punctuation
  # now calculate the length of the portion to be concatenated
  my $overallLength = 0;
  for (my $j = $i; $j <= $#array; ++$j) {
   $overallLength += length ($array[$j]);
  }
  unless ($overallLength > $THRESHOLD_LENGTH)
  {
   for (my $j = $i; $j <= $#array; ++$j) {
    if ($types[$j] == 0) { $array[$j] = "\xa0"; }
   }
  }
  last;
 }

 #####################################################
 # apply rules 3-7 : no breaks after [word-category],
 # unless before a punctuation mark.

 applyWordSet($determiners);
 applyWordSet($negation);
 applyWordSet($conjunctions);
 applyWordSet($interrogative);
 applyWordSet($prepositions);

 ###########################################
 ###########################################
 # Output

 for (my $i = 0; $i <= $#array; ++$i)
 {
 $array[$i] =~ s/\xa0/&nbsp;/g;
  print $array[$i];
 }
 print "\n";
}

##############################################
# checks that a new non-breaking space at the
# given position will not result in a too long
# non-breakable sequence
sub eligible
{
 my $pos = shift;

 my $p = $pos;
 my $lengthbefore = 0;
 while ($p > 0)
 {
  --$p;
  if ($array[$p] eq " ") { last; }
  $lengthbefore += length($array[$p]);
 }

 $p = $pos;
 my $lengthafter = 0;
 while ($p < $#array)
 {
  ++$p;
  if ($array[$p] eq " ") { last; }
  $lengthafter += length($array[$p]);
 }
 return ($lengthbefore + $lengthafter + 1) <= $THRESHOLD_LENGTH;
}

#########################
sub applyWordSet
{
 my $wordset = shift;

 for (my $i = 0; $i <= $#array - 2; ++$i)
 {
  if ($array[$i + 1] != " ") { next; }
  if ($types[$i + 2] == 1) { next; }
  if (!exists($wordset->{lc($array[$i])})) { next; }
  if (eligible($i + 1)) { $array[$i + 1] = "\xa0"; }
 }
}
