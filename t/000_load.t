#!perl -w
use strict;
use Test::More tests => 1;

BEGIN {
    use_ok 'Dist::Maker::Command::list';
}

diag "Testing Dist::Maker::Command::list/$Dist::Maker::Command::list::VERSION";
eval { require Moose };
diag "Moose/$Moose::VERSION";
eval { require Mouse };
diag "Mouse/$Mouse::VERSION";
