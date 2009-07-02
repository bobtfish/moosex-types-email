use strict;
use warnings;
use Test::More tests => 2;
use Test::Exception;

{
    package MyClass;
    use Moose;
    use MooseX::Types::Email qw/EmailAddress/;
    use namespace::autoclean;

    has email => ( isa => EmailAddress, required => 1, is => 'ro' );
}

lives_ok { MyClass->new( email => 'bobtfish@bobtfish.net') }
    'bobtfish@bobtfish.net is an ok email';
throws_ok { MyClass->new( email => 'wob' ) }
    qr/be a valid e-mail/, 'Throws as "wob" is not a valid email';

