# This is a personal package so I can decide to require a recent Perl version.
use 5.012001000;
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
    ABSTRACT => 'Leonardo Pisano a.k.a. Fibonacci',
    AUTHOR   => 'G. Casati <fibo@cpan.org>',
    NAME      => 'Task-BeLike-FIBO',
    PREREQ_PM => {
        'App::Cpanminus' => '1.5019',
        'Config::YAML' => '1.42',
	'File::HomeDir'=>'1.00',
        'List::Util'   => '1.25',
        'Mojolicious'  => '3',
	'Moose'=>'2.0604',
        'Perl::Tidy'   => '20121207',
	'Perl::Critic'=>'1.118',
        'Path::Class'  => '0.29',
        'Scalar::Util' => '1.25',
        'Test::More'   => '0.98',
    },
    test         => { TESTS => 't/*.t' },
    VERSION_FROM => 'lib/Task/BeLike/FIBO.pm',
);

