package Kernel::Config;

use strict;
use warnings;
use utf8;

sub Load {
    my $Self = shift;

    $Self->{DatabaseHost} = ${ };

    $Self->{Database} = 'znuny';

    $Self->{DatabaseUser} = 'znuny';

    $Self->{DatabasePw} = 'some-pass';

    $Self->{DatabaseDSN} = "DBI:mysql:database=$Self->{Database};host=$Self->{DatabaseHost};";


    $Self->{Home} = '/opt/znuny';

    return 1;
}

use Kernel::Config::Defaults; 
use parent qw(Kernel::Config::Defaults);


1;
