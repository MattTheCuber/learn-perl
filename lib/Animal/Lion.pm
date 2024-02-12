package Animal::Lion;

use Animal::Cat;
use strict;
use warnings;

our @ISA = qw(Animal::Cat);

sub getSound {
	my ($self) = @_;
	return $self->{name}, " says Rowr"
}

1;