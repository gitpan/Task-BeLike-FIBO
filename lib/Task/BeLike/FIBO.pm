package Task::BeLike::FIBO;
use strict;
use warnings;

our $VERSION = '0.12';

1;

__END__

=encoding utf8

=head1 NAME

Task::BeLike::FIBO -- Leonardo Pisano a.k.a. Fibonacci

=begin HTML

<p><a href="https://metacpan.org/pod/Task::BeLike::FIBO" target="_blank"><img alt="CPAN version" src="https://badge.fury.io/pl/Task-BeLike-FIBO.svg"></a> <a href="https://travis-ci.org/fibo/Task-BeLike-FIBO-pm" target="_blank"><img alt="Build Status" src="https://travis-ci.org/fibo/Task-BeLike-FIBO-pm.svg?branch=master"></a></p>

=end HTML

=head1 SYNOPSIS

    cpan Task::BeLike::FIBO
    perldoc Task::BeLike::FIBO

=head1 DESCRIPTION

Hi! I am L<FIBO|https://metacpan.org/author/FIBO>, an italian mathematician. I graduated in 2005 at L<Università degli Studi di Genova|http://www.dima.unige.it/> and since then I work doing Business Intelligence and Web Analytics. My boss said: you need Perl. So I started using this language. I like many programming languages, but, Perl really help me to pay my rent.

This is a primary about my habits and a collection of modules I use when I write Perl code.

=head1 PACKAGE GUIDELINES

Do not get crazy with automatic generators. I am a mathematician and a coder, not a corporation.
Every package is different and has different needings.

Just use copy and paste and your brain!

The smack of a L<DRY|http://en.wikipedia.org/wiki/Don't_repeat_yourself> L<KISS|http://en.wikipedia.org/wiki/KISS_principle> is not that bad.

Learn from nature: stay as minimal as possible.

=head2 FILES

Follows a list of sample files I usually include in a package, C<MY::Package> for instance.

I use to create a L<GitHub|https://github.com/> repo named C<My-Package-pm>.

I also use L<Travis CI|https://travis-ci.org/>.

And yes, L<Task::BeLike::FIBO> was created with these guidelines too! So it is a good example of a meta package ^:) I am a mathematician, I told you :D

=over 4

=item *

lib/My/Package.pm

This is the main file of the package and looks something like this

    package My::Package;
    use strict;
    use warnings;

    our $VERSION = '0.1';

    1;

    __END__

    =encoding utf8

    =head1 NAME

    My::Package -- is yet another Perl package

    =begin HTML

    <p><a href="https://metacpan.org/pod/My::Package" target="_blank"><img alt="CPAN version" src="https://badge.fury.io/pl/My-Package.svg"></a> <a href="https://travis-ci.org/fibo/My-Package-pm" target="_blank"><img alt="Build Status" src="https://travis-ci.org/fibo/My-Package-pm.svg?branch=master"></a></p>

    =end HTML

    =head1 SYNOPSIS

        package Your:Package;
        use My::Package;

        # Create a My::Package instance.
        my $foo = My::Package->new;

        # foo goes to a bar, ehm ... to have a coffee.
        $foo->bar;

    =head1 DESCRIPTION

    This is a description of what <My::Package> does, why you maybe want to use it, the motivations behind him.

    =head1 COPYRIGHT AND LICENSE

    This software is copyright (c) 2014 by G. Casati.

    This is free software; you can redistribute it and/or modify it under the same terms as the Perl 5 programming language system itself.

    =cut

=item *

README.md

    My-Package
    ==========

    My-Package description ...

    To install, pray the mantra

        perl Makefile.PL
        make
        make test
        make install

    For more information point your browser to [online docs](https://metacpan.org/pod/My::Package).

    --------
    [![CPAN version](https://badge.fury.io/pl/My-Package.svg)](https://metacpan.org/pod/My::Package)
    [![Build Status](https://travis-ci.org/fibo/My-Package-pm.png?branch=master)](https://travis-ci.org/fibo/My-Package-pm)

=item *

.travis.yml

    language: perl
    perl:
      - "5.18"
      - "5.16"
      - "5.14"
      - "5.12"
      - "5.10"
      - "5.8"

=item *

.gitignore

    .*
    *~
    !.gitignore
    !.travis.yml
    blib
    pm_to_blib
    Makefile*
    !Makefile.PL
    MANIFEST*
    !MANIFEST.SKIP
    *META.*
    *.tar.gz

=item *

Makefile.PL

    use strict;
    use warnings;

    use ExtUtils::MakeMaker 6.64;

    WriteMakefile(
        ABSTRACT_FROM => 'lib/My/Package.pm',
        VERSION_FROM  => 'lib/My/Package.pm',
        AUTHOR        => 'G. Casati <fibo@cpan.org>',
        NAME          => 'My::Package',
        LICENSE      => 'artistic_2',
        MIN_PERL_VERSION => '5.8.0',
        META_MERGE => {
            resources => {
                homepage   => 'https://metacpan.org/pod/My::Package',
                license    => 'http://g14n.info/artistic-license',
                repository => 'https://github.com/fibo/My-Package-pm',
                bugtracker => 'https://github.com/fibo/My-Package-pm/issues'
            },
        },
        PREREQ_PM => {
            # 'Some::Package' => '0',
            # 'Other::Package' => '1.2.3'
        },
        # EXE_FILES => ['bin/foo', 'bin/bar'],
        BUILD_REQUIRES => {
            'ExtUtils::MakeMaker' => '6.64'
        },
        test => { TESTS => 't/*.t' },
        TEST_REQUIRES => {
            'Test::Compile'      => '1.2.1',
            'Test::More'         => '1.001009',
            'Test::Pod'          => '1.48'
        }
    );

A note about versions in C<PREREQ_PM>: keep in mind that when specifying a version for core modules, it should match the version shipped with Perl version C<MIN_PERL_VERSION>.

The L<corelist> app is your friend.

For example if I want to figure out which version of L<File::Path> I should require, if the lower Perl version I am supporting is C<5.8.0> I launch

    $ corelist -a File::Path | grep v5.8.0
      v5.8.0     1.05

so I know I should go for C<1.05>.

=item *

MANIFEST.SKIP

    ^MANIFEST\.SKIP$
    ^MANIFEST\.bak$
    ^\.
    .*\.old$
    .*\.bak$
    \.tar\.gz$
    ^Makefile$
    ^MYMETA\.
    ^blib
    ^pm_to_blib

=item *

Changes

It is considered a good habit to keep track of at least major changes to inform users what they should expect when upgrading version.

    2014-12-02 v0.1
    + First release

=back

=head2 WORKFLOW

=over 4

=item *

Start a feature branch

    $ git checkout -b somefeature

=item *

Write documentation about new feature. Then write tests to check it and code to implement it.

=item *

Run tests

    $ prove -l --state=save

=item *

If some test does not pass, fix code and run tests that failed

    $ prove -l --state=save,failed

=item *

Commit changes

    $ git commit -am 'added some feature'

Merge feature branch and push

    $ git rebase master
    $ git checkout master
    $ git merge somefeature
    $ git push

Delete feature branch

    $ git branch -d somefeature

=item *

Update version, usually in file C<lib/My/Package.pm>.

Use L<Semantic Versioning|http://semver.org/>.

Check that C<Changes> file is updated with modifications.

Create a new release

    $ perl Makefile.PL
    $ make
    $ make test
    $ make manifest
    $ make dist
    $ make realclean

Create a git tag

    $ git tag v0.1
    $ git push

=item *

Upload to L<PAUSE|http://pause.perl.org/>

    $ cpan-upload -u fibo My-Package-0.1.tar.gz
    PAUSE Password:
    registering upload with PAUSE web server
    POSTing upload for My-Package-0.1.tar.gz to https://pause.perl.org/pause/authenquery
    PAUSE add message sent ok [200]

=back

=head1 STUFF INCLUDED

=over 4

=item *

L<CPAN>

See how to setup L<A CPAN client that works like a charm|http://g14n.info/2014/03/a-cpan-client-that-works-like-charm>.

=item *

L<CPAN::Uploader> to release modules using a cli. It also depends on L<LWP::Protocol::https> which depends on L<IO::Socket::SSL> which I think L<should be a core module|http://blogs.perl.org/users/chris_fedde/2013/03/how-do-we-know-when-a-module-is-depricated.html#comment-1460139>.

=item *

L<ExtUtils::MakeMaker> version C<6.64>, cause I use the C<TEST_REQUIRES> option.

=item *

L<Module::CoreList>

It is a core module since Perl C<v5.8.9>.

=item *

L<Perl::Tidy>

Use L<Perl::Tidy> defaults. Do not indent every source file automatically, indent by hand and use your creativity.

See Perl section in L<My Vim preferences|http://g14n.info/2013/07/my-vim-configuration#perl> to see how you can use L<perltidy> with Vim.

=item *

L<Test::Compile>

Create a C<t/_compile.t> file

    use strict;
    use warnings;
    use Test::More;
    eval "use Test::Compile";
    plan skip_all => "Test::Compile required for testing compilation"
      if $@;
    all_pm_files_ok();

=item *

L<Test::More>

=item *

L<Test::Pod>

Create a C<t/_pod.t> file

    use strict;
    use warnings;
    use Test::More;
    eval "use Test::Pod";
    plan skip_all => "Test::Pod required for testing POD"
      if $@;
    all_pod_files_ok();

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by G. Casati.

This is free software; you can redistribute it and/or modify it under the same terms as the Perl 5 programming language system itself.

=cut

