use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

#Comment

print "Hello World\n";

my $scaler = 'One of the 3 types of data in Perl.';

my ($name, $age, $street) = ('Matthew', 15, 'Blueberry Hill Road');

my $my_info = "$name lives on \"$street\"\n";

$my_info = qq{$name lives on "$street"i\n};

print $my_info;

my $bunch_of_info = <<"END";
This is a
bunch of information
on multiple lines
END

say $bunch_of_info;

my $big_int = 18446744073709551615;

# %c : Character
# %s : String
# %d : Decimal
# %u : Unsigned Integer
# %f : Floating Point (Decimal Notation)
# %e : Floating Point (Scientific Notation)

printf("%u \n", $big_int + 1);

my $big_float = .1000000000000001;

printf("%.16f \n", $big_float + .1000000000000001);

my $first = 1;
my $second = 2;

($first, $second) = ($second, $first);

say "$first $second";
