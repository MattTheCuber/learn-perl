use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

my @primes = (2,3,5,7,11,13,17);

my @my_info = ("Matthew", "53 Blueberry Hill Rd", 15, 6.08);

$my_info[4] = "Vine";

for my $info (@my_info) {
	say $info;
}

print("\n");

foreach my $num (@primes) {
	say $num;
}

print("\n");

for (@my_info) {
	say $_;
}

print("\n");

my @my_name = @my_info[0,4];
say @my_name;

my $items = scalar @my_info;
say $items;

my ($f_name, $address, $how_old, $height, $l_name) = @my_info;
say "$f_name $l_name";

print("\n");

say "Popped Value ", pop @primes;
say "Pushed Value ", push @primes, 17;
say "First Item ", shift @primes;
say "Unshifted Item ", unshift @primes, 2;
print join(", ", @primes), "\n";

say "Remove Index 0 - 2 ", splice @primes, 0, 3;
print join(", ", @primes), "\n";

print join " ", ('list', 'of', 'words', "\n");

my $customers = "Sue Sally Paul";
my @cust_array = split / /, $customers;
print join(", ", @cust_array), "\n";

my @cust_array_reverse = reverse @cust_array;
my @cust_array_sorted = sort @cust_array;
my @cust_array_reverse_sorted = reverse sort @cust_array;
print "Customers reverse: ", join(", ", @cust_array_reverse), "\n";
print "Customers sorted: ", join(", ", @cust_array_sorted), "\n";
print "Customers reverse sorted: ", join(", ", @cust_array_reverse_sorted), "\n";

my @number_array = (1 .. 8);

my @odds_array = grep {$_ % 2} @number_array;
print join(", ", @odds_array), "\n";

my @dbl_array = map {$_ * 2} @number_array;
print join(", ", @dbl_array), "\n";









