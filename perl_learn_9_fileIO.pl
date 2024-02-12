use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

# < read only
# >> append
# +< read and write

my $emp_file = 'employees.txt';

open my $fh, '<', $emp_file or die "Can't Open File: $_";
while(my $info = <$fh>) {
#	chomp($info);

	my ($name, $job, $id) = split /:/, $info;

	print "$name is a $job and has the id of $id";
}
close $fh or die "Couldn't Close File : $_";

open $fh, '>>', $emp_file or die "Can't Open File: $_";
print $fh "\nMatt:Supplier:124";
close $fh or die "Couldn't Close File : $_";

print "\n";

open $fh, '+<', $emp_file or die "Can't Open File: $_";
# moves to start of file
seek $fh, 0, 0;
print $fh "Phil:Salesman:125\n";
close $fh or die "Couldn't Close File : $_";

















