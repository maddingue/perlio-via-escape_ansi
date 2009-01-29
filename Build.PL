use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => "PerlIO::via::escape_ansi",
    license             => "perl",
    dist_author         => 'Sebastien Aperghis-Tramoni <sebastien@aperghis.net>',
    dist_version_from   => "lib/PerlIO/via/escape_ansi.pm",
    c_source            => ".",
    xs_files            => { "escape_ansi.xs" => "escape_ansi.xs" },
    requires => {
        'PerlIO::via'   => 0,
    },
    build_requires => {
        'Test::More'    => 0,
    },
    add_to_cleanup      => [ "PerlIO-via-escape_ansi-*" ],
);

$builder->create_build_script();
