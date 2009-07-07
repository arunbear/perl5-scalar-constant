use strict;
use warnings;
use inc::Module::Install;

# Define metadata
repository     'http://github.com/arunbear/perl5-scalar-constant';
name           'Scalar-Constant';
all_from       'lib/Scalar/Constant.pm';

# Specific dependencies
test_requires  'Test::More'  => '0.42';

WriteAll;
