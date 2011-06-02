package Dist::Maker::Command::list;
use 5.008_001;
use Mouse;
use MouseX::StrictConstructor;
BEGIN { extends 'Dist::Maker::Base' };

use Module::Find ();

our $VERSION = '0.02';

sub say {
    print @_, "\n";
}
sub run {
    my $self = shift;

    my @templates = $self->templates;
    say "Templates:";
    for my $template (@templates) {
        say "    $template";
    }

    my @commands = $self->commands;
    say "Commands:";
    for my $command (@commands) {
        say "    $command";
    }

    return 1;
}

sub templates {
    Module::Find::findallmod('Dist::Maker::Template');
}
sub commands {
    Module::Find::findallmod('Dist::Maker::Command');
}

no Mouse;
__PACKAGE__->meta->make_immutable();
__END__

=head1 NAME

Dist::Maker::Command::list - Perl extention to do something

=head1 VERSION

This document describes Dist::Maker::Command::list version 0.01.

=head1 SYNOPSIS

    $ dim list

=head1 DESCRIPTION

# TODO

=head1 INTERFACE

# TODO

=head1 DEPENDENCIES

Perl 5.8.1 or later.

=head1 BUGS

All complex software has bugs lurking in it, and this module is no
exception. If you find a bug please either email me, or add the bug
to cpan-RT.

=head1 SEE ALSO

L<Dist::Maker>

=head1 AUTHOR

hisaichi5518 E<lt>info[at]moe-project.comE<gt>

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2011, hisaichi5518. All rights reserved.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
