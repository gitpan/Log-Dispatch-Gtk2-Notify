
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Log-Dispatch-Gtk2-Notify',
  NAME      => 'Log::Dispatch::Gtk2::Notify',
  AUTHOR    => 'Florian\ Ragwitz\ \<rafl\@debian\.org\>',
  ABSTRACT  => 'send log messages to a desktop notification daemon',
  VERSION   => '0.01',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "namespace::clean" => '0',
    "MooseX::Types::Moose" => '0',
    "MooseX::Types" => '0',
    "Gtk2::Notify" => '0',
    "Log::Dispatch" => '0',
    "Gtk2" => '0',
    "File::Basename" => '0',
    "Moose" => '0',
  },
);
