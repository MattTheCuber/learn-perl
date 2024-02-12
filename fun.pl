use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

say "Add numbers 1 to what? ";
my $one_to_what = <STDIN>;
my @nums = (1 .. $one_to_what);
my $final = 0;
foreach my $val (@nums) {
	$final += $val;
}
print "Answer: $final\n\n";

say "Print numbers 1 to what? ";
$one_to_what = <STDIN>;
print "\n";
print join("\n", (1 .. $one_to_what)), "\n";