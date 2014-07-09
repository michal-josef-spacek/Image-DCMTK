# Pragmas.
use strict;
use warnings;

# Modules.
use Image::DCMTK;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $ret = Image::DCMTK::openXMLItem();
is($ret, '<item card="1" len="10">', 'Open of XML item element.');

# Test.
$ret = Image::DCMTK::openXMLItem({
	'CARDINALITY' => 2,
	'LEN' => 20,
});
is($ret, '<item card="2" len="20">', 'Open of XML item element with '.
	'explicit values.');
