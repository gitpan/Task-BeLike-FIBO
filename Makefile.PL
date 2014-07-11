use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
    ABSTRACT_FROM => 'lib/Task/BeLike/FIBO.pod',
    VERSION       => '0.1',
    AUTHOR        => 'G. Casati <fibo@cpan.org>',
    NAME          => 'Task-BeLike-FIBO',
    PREREQ_PM     => {
        'CPAN'                => '2',
        'ExtUtils::MakeMaker' => '6.64',
        'Moose'               => '2',
        'Test::Compile'       => '1',
        'Test::More'          => '1',
        'Test::Pod'           => '1',
    },
    test          => { TESTS => 't/*.t' },
    TEST_REQUIRES => {
        'Test::More' => '1',
        'Test::Pod'  => '1',
    },
);
