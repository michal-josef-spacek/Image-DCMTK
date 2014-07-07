# Pragmas.
use strict;
use warnings;

# Modules.
use File::Object;
use Image::DCMTK;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Data directory.
my $dir = File::Object->new->up->dir('data')->set;

# Test.
my $ret_hr = Image::DCMTK::openDicomFile({
	'DCM_FILENAME' => $dir->file('ex1.dcm')->s,
});
is_deeply(
	$ret_hr,
	{
		'data-set' => {
			'element' => {
				'content' => 'ORIGINAL\PRIMARY',
				'len' => 16,
				'name' => 'ImageType',
				'tag' => '0008,0008',
				'vm' => 2,
				'vr' => 'CS',
			},
			'name' => 'Little Endian Explicit',
			'xfer' => '1.2.840.10008.1.2.1',
		},
		'meta-header' => {
			'element' => {
				'FileMetaInformationGroupLength' => {
					'content' => 28,
					'len' => 4,
					'tag' => '0002,0000',
					'vm' => 1,
					'vr' => 'UL',
				},
				'TransferSyntaxUID' => {
					'content' => '1.2.840.10008.1.2.1',
					'len' => 20,
					'tag' => '0002,0010',
					'vm' => 1,
					'vr' => 'UI',
				},
			},
			'name' => 'Little Endian Explicit',
			'xfer' => '1.2.840.10008.1.2.1',
		},
	},
	'Get hash reference to structure from DICOM file.',
);
