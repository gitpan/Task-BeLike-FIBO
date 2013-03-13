# This is a personal package so I can decide to require a recent Perl version.
use 5.012001000;
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
    ABSTRACT  => 'Leonardo Pisano a.k.a. Fibonacci',
    AUTHOR    => 'G. Casati <fibo@cpan.org>',
    NAME      => 'Task-BeLike-FIBO',
    PREREQ_PM => {
        'App::cpanminus'              => '1.5019',
        'boolean'                     => '0.28',
        'DBI'                         => '1.623',
        'DBIx::Class'                 => '0.08200',
        'DBIx::Class::Schema::Loader' => '0.07033',
        'Dist::Zilla'                 => '4.300028',
        'File::HomeDir'               => '1.00',
        'List::Util'                  => '1.25',
        'List::MoreUtils'             => '0.33',
        'Mojolicious'                 => '3.70',
        'Moose'                       => '2.0604',
        'MooseX::App'                 => '1.09',
        'MooseX::ClassAttribute'      => '0.26',
        'MooseX::Types::Path::Class'  => '0.06',
        'Perl::Tidy'                  => '20121207',
        'Perl::Critic'                => '1.118',
        'Perl::Critic::Bangs'         => '1.10',
        'Path::Class'                 => '0.29',
        'Scalar::Util'                => '1.25',
        'Test::More'                  => '0.98',
        'Test::use::ok'               => '0.11',
        'Throwable::Error'            => '0.102080',
        'YAML'                        => '0.84',
    },
    test         => { TESTS => 't/*.t' },
    VERSION_FROM => 'lib/Task/BeLike/FIBO.pm',
);

