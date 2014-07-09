# Pragmas.
use strict;
use warnings;

# Modules.
use Image::DCMTK;
use Test::More 'tests' => 6;
use Test::NoWarnings;

# Test.
# XXX Bad openXMLSequence() functionality with warnings.
#my $ret = Image::DCMTK::openXMLSequence();
#is($ret, '<sequence tag="," vr="SQ" card="1" len="10" name="None">',
#	'Create XML sequence with default values.');

# Test.
my $ret = Image::DCMTK::openXMLSequence({
	'GRP' => '0002',
	'ELEM' => '0003',
});
is($ret, '<sequence tag="0002,0003" vr="SQ" card="1" len="10" name="None">',
	'Create XML sequence for DICOM tag, which isn\'t sequence.');

# Test.
$ret = Image::DCMTK::openXMLSequence({
	'GRP' => '0002',
	'ELEM' => '0004',
});
is($ret, '<sequence tag="0002,0004" vr="SQ" card="1" len="10" name="None">',
	'Create XML sequence for DICOM tag, which doesn\'t exits.');

# Test.
$ret = Image::DCMTK::openXMLSequence({
	'GRP' => '0004',
	'ELEM' => '1220',
});
is($ret, '<sequence tag="0004,1220" vr="SQ" card="1" len="10" name="None">',
	'Create XML sequence for DICOM tag, which is sequence.');

# Test.
$ret = Image::DCMTK::openXMLSequence({
	'DCM_DICT_NAME' => 'MediaStorageSOPInstanceUID',
});
is($ret, '<sequence tag="0002,0003" vr="UI" card="1" len="10" '.
	'name="MediaStorageSOPInstanceUID">', 'Create XML sequence for DICOM '.
	'name, which isn\'t sequence.');

# Test.
$ret = Image::DCMTK::openXMLSequence({
	'DCM_DICT_NAME' => 'DirectoryRecordSequence',
});
is($ret, '<sequence tag="0004,1220" vr="SQ" card="1" len="10" '.
	'name="DirectoryRecordSequence">', 'Create XML sequence for DICOM '.
	'name, which is sequence.');

# Test.
# XXX Bad openXMLSequence() functionality with warnings.
#$ret = Image::DCMTK::openXMLSequence({
#	'DCM_DICT_NAME' => 'Foo',
#});
#is($ret, '<sequence tag="," vr="SQ" card="1" len="10" name="None">',
#	'Create XML sequence for DICOM name, which doesn\'t exist.');
