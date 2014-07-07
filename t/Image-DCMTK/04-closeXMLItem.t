# Pragmas.
use strict;
use warnings;

# Modules.
use Image::DCMTK;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $ret = Image::DCMTK::closeXMLItem();
is($ret, '</item>', 'Close of XML item element.');
