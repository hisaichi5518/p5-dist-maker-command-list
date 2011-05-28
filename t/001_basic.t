#!perl -w
use strict;
use Test::More;

use Dist::Maker::Command::list;

# test Dist::Maker::Command::list here
my $object = Dist::Maker::Command::list->new;
isa_ok $object, 'Dist::Maker::Command::list';

done_testing;
