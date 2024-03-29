use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

sub get_random {
	return int (rand 11);
}
say "Random Number ", get_random();

sub get_random_max {
	my ($max_num) = @_;
	$max_num ||= 11;

	return int (rand $max_num);
}
say "Random Number ", get_random_max(100);

print "\n";

sub get_sum {
	my ($num_1, $num_2) = @_;

	$num_1 ||= 1;
	$num_2 ||= 1;

	return $num_1 + $num_2;
}
say "Sum of Numbers ", get_sum(1, 2);

sub sum_many {
	my $sum = 0;

	foreach my $val (@_) {
		$sum += $val;
	}

	return $sum;
}
say "Sum of Numbers ", sum_many(1, 2, 3, 4, 5);

sub increment {
	state $execute_total = 0;
	$execute_total ++;
	say "Executed $execute_total times";
}
increment();
increment();
increment();

print "\n";

sub double_array {
	my @num_array = @_;
	$_ *= 2 for @num_array;
	return @num_array
}

my @rand_array = (1, 2, 3, 4, 5);
print join(", ", double_array(@rand_array)), "\n";

sub get_mults {
	my ($rand_num) = @_;
	$rand_num ||= 1;
	return $rand_num * 2, $rand_num * 3;
}

my ($dbl_num, $trip_num) = get_mults(3);
say "$dbl_num $trip_num";

print "\n";

sub factorial {
	my ($num) = @_;
	return 0 if $num <= 0;
	return 1 if $num == 1;
	return $num * factorial($num - 1);
}

# 1st: num = 5 * factorial(4) = 5 * 24 = 120
# 2nd: num = 4 * factorial(3) = 4 * 6 = 24
# 3rd: num = 3 * factorial(2) = 3 * 2 = 6
# 4th: num = 2 * factorial(1) = 2 * 1 = 2
# 5th: num = 1 = 1

say "Facotrial 0: ", factorial(0);
say "Facotrial 1: ", factorial(1);
say "Facotrial 5: ", factorial(5);

print "\n";
