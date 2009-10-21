use inc::Module::Install 0.90;
use strict;
use warnings;

if ($Module::Install::AUTHOR) {
    require Module::Install::AuthorTests;
}

name 'MooseX-Types-Email';
all_from 'lib/MooseX/Types/Email.pm';

requires 'Moose';
requires 'MooseX::Types::Common';
requires 'Email::Valid';
requires 'Email::Abstract';

test_requires 'Test::More';
test_requires 'Test::Exception';
test_requires 'namespace::autoclean';

author_tests 't/author';

resources repository => 'http://github.com/bobtfish/moosex-types-email/tree/master';

WriteAll();

