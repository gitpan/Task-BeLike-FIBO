use 5.008008008;
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
    ABSTRACT => 'Leonardo Pisano a.k.a. Fibonacci',
    AUTHOR   => 'G. Casati <fibo@cpan.org>',

    #EXE_FILES => ['bin/pni'],
    NAME      => 'Task-BeLike-FIBO',
    PREREQ_PM => {
        'List::Util'   => '0',
        'Config::YAML' => '0',
        'Mojolicious'  => '3',
        'Perl::Tidy'   => '20121207',
        'Path::Class'  => '0',
        'Scalar::Util' => '0',
    },
    test         => { TESTS => 't/*.t' },
    VERSION_FROM => 'lib/Task/BeLike/FIBO.pm',
);

