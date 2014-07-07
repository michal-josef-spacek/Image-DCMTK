# Pragmas.
use strict;
use warnings;

# Modules.
use Image::DCMTK;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Image::DCMTK::VERSION, 0.05, 'Version.');
