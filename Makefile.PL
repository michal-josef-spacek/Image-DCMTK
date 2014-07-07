# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'Interface to the DCMTK Dicom Toolkit.';
author 'Robert Haxton <robert.haxton@gmail.com>';
author 'Michal Špaček <skim@cpan.org>';
license 'unknown';
name 'Image-DCMTK';
readme_from 'lib/Image/DCMTK.pm';
requires 'Data::PrintUtils' => 0;
requires 'Getopt::CommandLineExports' => 0;
requires 'Test::More' => 0;
requires 'XML::Simple' => 0;
requires 'perl' => 5.6.0;
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=Image-DCMTK';
resources 'homepage' => 'https://github.com/tupinek/Image-DCMTK';
resources 'repository' => 'git://github.com/tupinek/Image-DCMTK';
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.06';

# Run.
WriteAll();
