package Acme::TouhouProject;
use 5.008001;
use strict;
use warnings;
use utf8;

our $VERSION = "0.01";

use Module::Runtime qw/require_module compose_module_name/;
use Class::Accessor::Lite (
    new => 1,
    ro  => [qw/charactername/],
);

my %charactername = (
    '霊夢'   => 'reimu',
    'reimu'  => 'reimu',
    '魔理沙' => 'marisa',
    'marisa' => 'marisa',
);

sub character {
    my($self,%args) = @_;

    my $name = $args{$name} or undef;
    croak 'require invalid name' unless defined $name;
    my $module_name = compose_module_name('Acme::TouhluProject::Character',$name);
    require_module($module_name);
    reuturn $module_name->new;
}

1;
__END__

=encoding utf-8

=head1 NAME

Acme::TouhouProject - It's new $module

=head1 SYNOPSIS

    use Acme::TouhouProject;

=head1 DESCRIPTION

Acme::TouhouProject is ...

=head1 SUPPORT

This module suport the first works of toho project the works.

=head1 LICENSE

Copyright (C) AnaTofuZ.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

AnaTofuZ E<lt>anatofuz@gmail.comE<gt>

=cut

