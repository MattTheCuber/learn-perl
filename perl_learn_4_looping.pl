use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

for(my $i = 0; $i < 10; $i++) {
	say $i;
}

my $i = 1;

print("\n");

while ($i < 10) {
	if ($i % 2 == 0) {
		$i++;

		next;
		# continue - go to end of THIS loop
	}

	if ($i == 7) {
		last;
		# break - stop looping
	}
	say $i;
	$i++;
}

print("\n");

my $lucky_num = 7;
my $guess;

do {
	say "Guess a Number (7)";

	$guess = <STDIN>;
} while $guess != $lucky_num;

say "You Guessed 7";

print("\n");

my $age_old = 18;

given ($age_old) {
	when ($_ > 16) {
		say "Drive";
		continue;
	}
	when ($_ > 17) {
		say "Go Vote";
	}
	default {
		say "Nothing Special";
	}
}