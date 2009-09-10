package MooseX::Types::Email;
use MooseX::Types
    -declare => [qw/EmailAddress/];

use MooseX::Types::Common::String 'NonEmptySimpleStr';
use Email::Valid;

our $VERSION = '0.002';

subtype EmailAddress,
  as NonEmptySimpleStr,
  where { Email::Valid->address($_) },
  message { "Must be a valid e-mail address" };

1;

=head1 NAME

MooseX::Types::Email - Email address validation type constraint for Moose.

=head1 SYNOPSIS

    package MyClass;
    use Moose;
    use MooseX::Types::Email qw/EmailAddress/;
    use namespace::autoclean;

    has email => ( isa => EmailAddress, required => 1, is => 'ro' );

=head1 DESCRIPTION

Moose type constraint which uses L<Email::Valid> to check for valid email addresses.

=head1 SEE ALSO

=over

=item L<Moose::Util::TypeConstraints>

=item L<MooseX::Types>

=item L<Email::Valid>

=back

=head1 AUTHORS

Tomas Doran (t0m) C<< <bobtfish@bobtfish.net> >>

Shamelessly extracted from L<Reaction::Types::Email>.

=head1 LICENSE

This library is free software, you can redistribute it and/or modify it under the same
terms as Perl itself.

=cut

