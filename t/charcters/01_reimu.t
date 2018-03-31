use strict;
use warnings;

use Test2::V0;

use Acme::TouhouProject;

subtest 'reimu' => sub {
    ok( my $reimu =  Acme::TouhouProject->new("reimu"));
    is( $reimu->full_name, "博麗霊夢");
    is( $reimu->first_appearance, "東方靈異伝");
};

done_testing;
