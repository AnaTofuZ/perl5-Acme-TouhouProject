requires 'perl', '5.008001';
requires 'YAML::XS';
requires 'Class::Accessor::Lite';

on 'test' => sub {
    requires 'Test::More', '0.98';
    requires 'Test2::V0';
};

