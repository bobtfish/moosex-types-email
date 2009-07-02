use inc::Module::Install 0.90;

name 'MooseX-Types-Email';
all_from 'lib/MooseX/Types/Email.pm';

requires 'Moose';
requires 'MooseX::Types::Common';
requires 'Email::Valid';

test_requires 'Test::More';
test_requires 'Test::Exception';
test_requires 'namespace::autoclean';

WriteAll();

