#!/usr/bin/perl -p
tr/'"����/"'''""/;
 
# -p option makes behavior same as below
# #!/usr/bin/perl
# use strict;
# use warnings;
# while (<>) {
# 	tr/'"����/"'''""/;
# 	print $_;
# }
