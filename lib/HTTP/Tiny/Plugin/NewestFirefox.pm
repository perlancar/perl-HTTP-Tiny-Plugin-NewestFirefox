package HTTP::Tiny::Plugin::NewestFirefox;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;
use Log::ger;

sub after_instantiate {
    require HTTP::UserAgentStr::Util::ByNickname;

    my ($class, $r) = @_;
    $r->{http}{agent} = HTTP::UserAgentStr::Util::ByNickname::newest_firefox();
    1;
}

1;
# ABSTRACT: Set User-Agent to newest Firefox

=for Pod::Coverage .+

=head1 SYNOPSIS

 use HTTP::Tiny::Plugin 'NewestFirefox';

 my $http = HTTP::Tiny::Plugin->new; # agent is preset to newest Firefox


=head1 DESCRIPTION


=head1 CONFIGURATION


=head1 SEE ALSO

L<HTTP::UserAgentStr::Util::ByNickname>

L<HTTP::Tiny::NewestFirefox>, a non-plugin version.
