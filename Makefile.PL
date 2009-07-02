use inc::Module::Install;

name 'MooseX-Types-Email';
all_from 'lib/MooseX/Types/Email.pm';

build_requires 'Catalyst::Runtime';
build_requires 'Test::WWW::Mechanize::Catalyst';
build_requires 'Test::More';
build_requires 'ok';

WriteAll();
