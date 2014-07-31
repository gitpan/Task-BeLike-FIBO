use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
    ABSTRACT_FROM => 'lib/Task/BeLike/FIBO.pod',
    VERSION       => '0.3',
    AUTHOR        => 'G. Casati <fibo@cpan.org>',
    NAME          => 'Task-BeLike-FIBO',
    META_MERGE => {
      resources => {
        homepage   => 'https://metacpan.org/pod/Task::BeLike::FIBO',
        license    => 'http://fibo.mit-license.org/',
        repository => 'http://github.com/fibo/Task-BeLike-FIBO-pm',
        bugtracker => 'http://github.com/fibo/Task-BeLike-FIBO-pm/issues'
      },
    },
    PREREQ_PM     => {
        'CPAN'                => '2',
        'ExtUtils::MakeMaker' => '6.64',
        'Perl::Tidy'          => '20140328',
        'Test::Compile'       => '1',
        'Test::More'          => '1',
        'Test::Pod'           => '1'
    },
    test => { TESTS => 't/*.t' }
);

