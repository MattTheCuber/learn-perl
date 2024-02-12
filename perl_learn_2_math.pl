use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

say "5 + 4 = ", 5 + 4;
say "5 - 4 = ", 5 - 4;
say "5 * 4 = ", 5 * 4;
say "5 / 4 = ", 5 / 4;
say "5 % 4 = ", 5 % 4;
say "5 ** 4 (5^4) = ", 5 ** 4;

print "\n";

say "EXP 1 (e^1) = ", exp 1;
say "HEX 10 = ", hex 10;
say "OCT 10 = ", oct 10;
say "INT 6.45 (truncate) = ", int(6.45);
say "LOG 2 (2^e)= ", log 2;
say "Random between 0 - 10 = ", int(rand 11);
say "SQRT 9 = ", sqrt 9;

print "\n";

my $rand_num = 5;
say "Number Incremented ", ++$rand_num;
say "Number Deincremented ", --$rand_num;
$rand_num *= 5;
say "Multiplied by 5 ", $rand_num;
$rand_num = 5;
$rand_num /= 5;
say "Divided by 5 ", $rand_num;

print "\n";

say "3 + 2 * 5 = ", 3 + 2 * 5;
say "(3 + 2) * 5 = ", (3 + 2) * 5;
