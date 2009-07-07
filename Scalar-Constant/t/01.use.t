use Test::More tests => 3;
use strict;
use warnings;

use Scalar::Constant
    PI => 3.1415926535,
    C  => 299_792_458;

is($PI, 3.1415926535, 'pi was set');
is($C,  299_792_458,  'c was set');

diag("pi is $PI, and c is $C m/s");  
eval {
    $PI = 0;
};
like($@, qr"Modification of a read-only value attempted at", "pi can't be set again");
