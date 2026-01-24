package Alien::gettext;
# ABSTRACT: Getting latest gettext installed an available

use parent 'Alien::Base';

1;

=encoding utf8

=head1 SYNOPSIS

    use Alien::gettext;
    use Env qw( @PATH );

    unshift @PATH, Alien::gettext->bin_dir;

=head1 DESCRIPTION

This distribution provides the GNU gettext utilities via L<Alien::Base>. It
will either use the system gettext if available and recent enough, or download
and build it from source.

The gettext utilities include C<msgfmt>, C<msgmerge>, C<xgettext>, and other
tools for working with translation files.

=head1 METHODS

This module inherits all methods from L<Alien::Base>.

=cut
