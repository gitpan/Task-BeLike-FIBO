
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Leonardo Pisano a.k.a. Fibonacci\r",
  "AUTHOR" => "G. Casati <fibo\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Task-BeLike-FIBO",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Task::BeLike::FIBO",
  "PREREQ_PM" => {
    "App::cpanminus" => "1.5019",
    "CPAN" => "2.00",
    "DBI" => "1.623",
    "DBIx::Class" => "0.08200",
    "DBIx::Class::Schema::Loader" => "0.07033",
    "Dist::Zilla" => "4.300028",
    "Dist::Zilla::MintingProfile::Author::FIBO" => 0,
    "File::HomeDir" => "1.00",
    "List::MoreUtils" => "0.33",
    "List::Util" => "1.25",
    "Mojolicious" => "3.70",
    "Moose" => "2.0604",
    "MooseX::App" => "1.09",
    "MooseX::ClassAttribute" => "0.26",
    "MooseX::Types::Path::Class" => "0.06",
    "MooseX::Types::Structured" => "0.28",
    "Path::Class" => "0.29",
    "Perl::Critic" => "1.118",
    "Perl::Critic::Bangs" => "1.10",
    "Perl::Tidy" => 20121207,
    "Scalar::Util" => "1.25",
    "Test::More" => "0.98",
    "Test::use::ok" => "0.11",
    "Throwable::Error" => "0.102080",
    "YAML" => "0.84",
    "boolean" => "0.28"
  },
  "TEST_REQUIRES" => {},
  "VERSION" => 20130508,
  "test" => {
    "TESTS" => ""
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



