#!/usr/bin/perl
# https://www.peter.com.au/perl/index.html#Base64Encoding

use warnings;
use strict;

use MIME::Base64 qw(decode_base64);
local($/) = undef;  # slurp
print decode_base64(<STDIN>);