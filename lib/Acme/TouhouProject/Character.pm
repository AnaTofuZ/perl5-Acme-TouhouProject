package Acme::TohoProject::Character;
use strict;
use warnings;
use utf8;
use Module::Runtime qw/compose_module_name/;

use Class::Accessor::Lite(
    ro  => [qw/name firstname lastname songs/],
);

sub BUILD {
    my($self,$name) = @_;

    {
        no strict 'refs';
        my $module = compose_module_name('Acme::TohoProject::Character',$name);
    }
}

1;
