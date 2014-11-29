use strict;
use warnings;

use ExtUtils::MakeMaker 6.64;

WriteMakefile(
    ABSTRACT_FROM => 'lib/Task/BeLike/FIBO.pm',
    VERSION_FROM  => 'lib/Task/BeLike/FIBO.pm',
    AUTHOR        => 'G. Casati <fibo@cpan.org>',
    NAME          => 'Task::BeLike::FIBO',
    META_MERGE => {
      resources => {
        homepage   => 'https://metacpan.org/pod/Task::BeLike::FIBO',
        license    => 'http://g14n.info/mit-license',
        repository => 'https://github.com/fibo/Task-BeLike-FIBO-pm',
        bugtracker => 'https://github.com/fibo/Task-BeLike-FIBO-pm/issues'
      },
    },
    PREREQ_PM     => {
        'CPAN'                => '2',
        'CPAN::Uploader'      => '0.103007',
        'ExtUtils::MakeMaker' => '6.64',
        'Perl::Tidy'          => '20140328',
        'Test::Compile'       => '1',
        'Test::More'          => '1',
        'Test::Pod'           => '1'
    },
    test => { TESTS => 't/*.t' },
    TEST_REQUIRES => {
        'Test::Compile' => '1',
        'Test::More' => '1',
        'Test::Pod'  => '1',
    }
);

