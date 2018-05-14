use strict;
use warnings;
use utf8;

use Test2::V0;

use Acme::TouhouProject;

subtest 'reimu' => sub {

    subtest 'alphabet' => sub {
        ok( my $toho =  Acme::TouhouProject->new());
        ok( my $reimu =  $toho->charcter('reimu'));
        is( $reimu, 'Acme::TouhouProject::Charcter::Reimu');
        is( $reimu->full_name, "博麗霊夢");
        is( $reimu->first_appearance, "東方靈異伝");
    };

    subtest 'ja' => sub {
        ok( my $toho =  Acme::TouhouProject->new());
        ok( my $reimu =  $toho->charcter('霊夢'));
        is( $reimu->full_name, "博麗霊夢");
        is( $reimu->first_appearance, "東方靈異伝");
    };
};

done_testing;
