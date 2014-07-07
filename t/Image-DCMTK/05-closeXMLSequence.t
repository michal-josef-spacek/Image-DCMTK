# Pragmas.
use strict;
use warnings;

# Modules.
use Image::DCMTK;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $ret = Image::DCMTK::closeXMLSequence();
is($ret, '</sequence>', 'Close of XML sequence element.');
