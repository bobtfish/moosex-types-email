use strict;
use warnings;
use Test::More tests => 2;
use Test::Exception;

{
    package MyClass;
    use Moose;
    use MooseX::Types::Email qw/EmailMessage/;
    use namespace::autoclean;

    has abstract => ( isa => EmailMessage, required => 1, is => 'ro' );
}

my $valid = <<'VALID';
From: example@example.com
To: example@example.com
Subject: test
Date: Tue Oct 20 21:57:31 2009

a body
VALID

my $es = Email::Simple->new($valid);

lives_ok { MyClass->new( abstract => $es) }
    'example email is an ok email';
throws_ok { MyClass->new( abstract => $valid ) }
    qr/something Email::Abstract recognizes/, 'Throws as string is not a valid email body';

