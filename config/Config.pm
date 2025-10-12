package Kernel::Config;

use strict;
use warnings;
use utf8;

sub Load {
    my $Self = shift;

    $Self->{DatabaseHost} = $ENV{MARIADB_HOST};

    $Self->{Database} = $ENV{MARIADB_DATABASE};

    $Self->{DatabaseUser} = $ENV{MARIADB_USER};

    $Self->{DatabasePw} = $ENV{MARIADB_PASSWORD};

    $Self->{DatabaseDSN} = "DBI:mysql:database=$Self->{Database};host=$Self->{DatabaseHost};";


    $Self->{Home} = '/opt/znuny';

    return 1;
}

use Kernel::Config::Defaults; 
use parent qw(Kernel::Config::Defaults);


1;
