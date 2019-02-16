package Task::BeLike::Plicease;

use strict;

# ABSTRACT: Modules Plicease Uses.
# VERSION

=head1 SYNOPSIS

 cpanm Task::BeLike::Plicease

=head1 DESCRIPTION

Modules that I like to have installed when I am doing my Perl thing.

Some modules are not installed on MSWin32 or cygwin if they are known
not to work on those platforms.  See the Makefile.PL or dist.ini that
comes with this distribution for details.

=over 4

=item *

Acme::Alien::DontPanic

=item *

Acme::Alien::DontPanic2

=item *

Acme::Ford::Prefect

=item *

Acme::Ford::Prefect2

=item *

Acme::Ford::Prefect::FFI

=item *

Alien

=item *

Alien::Alien

=item *

Alien::autoconf

=item *

Alien::automake

=item *

Alien::Autotools

=item *

Alien::Base::ModuleBuild

=item *

Alien::bison

=item *

Alien::Build

=item *

Alien::Build::Git

=item *

Alien::Build::MB

=item *

Alien::Build::Plugin::Decode::SourceForge

=item *

Alien::Build::Plugin::Fetch::Cache

=item *

Alien::Build::Plugin::Fetch::Prompt

=item *

Alien::Build::Plugin::Fetch::Rewrite

=item *

Alien::Build::Plugin::Probe::GnuWin32

=item *

Alien::Build::Plugin::Probe::Override

=item *

Alien::CMake

=item *

Alien::cmake3

=item *

Alien::curl

=item *

Alien::Editline

=item *

Alien::FFI

=item *

Alien::flex

=item *

Alien::gmake

=item *

Alien::GMP

=item *

Alien::gzip

=item *

Alien::Hunspell

=item *

Alien::Libarchive3

=item *

Alien::Libbz2

=item *

Alien::Librdkafka

=item *

Alien::LibreSSL

=item *

Alien::libtool

=item *

Alien::Libxml2

=item *

Alien::LibYAML

=item *

Alien::LZO

=item *

Alien::m4

=item *

Alien::MSYS

=item *

Alien::MSYS2

=item *

Alien::nasm

=item *

Alien::Nettle

=item *

Alien::nragent

=item *

Alien::patch

=item *

Alien::pkgconf

=item *

Alien::Role::Alt

=item *

Alien::Role::Dino

=item *

Alien::xz

=item *

AnyEvent::Finger

=item *

AnyEvent::FTP

=item *

AnyEvent::Ident

=item *

AnyEvent::Open3::Simple

=item *

AnyEvent::WebSocket::Client

=item *

App::Ack

=item *

App::af

=item *

App::cpangitify

=item *

App::cpanminus

=item *

App::Prove::Plugin::TermTable

=item *

App::Prove::Plugin::TermTableStty

=item *

App::pwhich

=item *

App::RegexFileUtils

=item *

App::spaceless

=item *

App::whichdll

=item *

Archive::Ar::Libarchive

=item *

Archive::Libarchive::Any

=item *

Archive::Libarchive::FFI

=item *

Archive::Libarchive::XS

=item *

autodie

=item *

Class::Inspector

=item *

DBD::mysqlPP

=item *

DBD::PgPP

=item *

DBD::SQLite

=item *

Devel::StackTrace

=item *

Digest::MD5

=item *

Dist::Zilla::App::Command::aliendeps

=item *

Dist::Zilla::Plugin::AlienBuild

=item *

Dist::Zilla::Plugin::Alt

=item *

Dist::Zilla::Plugin::Author::Plicease

=item *

Dist::Zilla::Plugin::CommentOut

=item *

Dist::Zilla::Plugin::CSS::Compressor

=item *

Dist::Zilla::Plugin::FFI

=item *

Dist::Zilla::Plugin::InsertExample

=item *

Dist::Zilla::Plugin::JavaScript::Minifier

=item *

Dist::Zilla::Plugin::MathInt64

=item *

Dist::Zilla::Plugin::OurPkgVersion

=item *

Dist::Zilla::Plugin::Test::Version

=item *

Dist::Zilla::Plugin::TextTabs

=item *

Dist::Zilla::PluginBundle::Author::Plicease

=item *

Env::ShellWords

=item *

EV

=item *

FFI

=item *

FFI::CheckLib

=item *

FFI::ExtractSymbols

=item *

FFI::Platypus

=item *

FFI::Platypus::Lang::CPP

=item *

FFI::Platypus::Lang::CPP::Demangle::XS

=item *

FFI::Platypus::Lang::Fortran

=item *

FFI::Platypus::Lang::Pascal

=item *

FFI::Platypus::Lang::Rust

=item *

FFI::Platypus::Legacy::Raw

=item *

FFI::Platypus::Type::StringArray

=item *

FFI::TinyCC

=item *

FFI::TinyCC::Inline

=item *

FFI::Util

=item *

File::LibMagic::FFI

=item *

File::Listing

=item *

File::Listing::Ftpcopy

=item *

File::ShareDir::Dist

=item *

File::Which

=item *

JSON

=item *

JSON::MaybeXS

=item *

Kafka::Librd

=item *

Lingua::Alphabet::Phonetic::LAPD

=item *

local::lib

=item *

Log::Log4perl::Appender::TAP

=item *

Module::Build::FFI

=item *

Module::Which

=item *

Mojolicious::Plugin::Ident

=item *

Mojolicious::Plugin::TtRenderer

=item *

Monkey::Patch

=item *

Moose

=item *

NewRelic::Agent::FFI

=item *

Photography::DX

=item *

Photography::EV

=item *

PkgConfig

=item *

PkgConfig::LibPkgConf

=item *

Pod::POM::Web

=item *

Role::Tiny

=item *

Shell::Config::Generate

=item *

Shell::Guess

=item *

String::Template

=item *

Template

=item *

Term::Clui

=item *

Term::EditLine

=item *

Test2::Plugin::FauxHomeDir

=item *

Test2::Tools::FFI

=item *

Test2::Tools::HTTP

=item *

Test2::Tools::HTTP::UA::Mojo

=item *

Test2::Tools::JSON::Pointer

=item *

Test2::Tools::URL

=item *

Test::Alien::CPP

=item *

Test::CChecker

=item *

Test::CPAN::Changes

=item *

Test::EOL

=item *

Test::Exec

=item *

Test::Fixme

=item *

Test::Memory::Cycle

=item *

Test::NoTabs

=item *

Test::Pod

=item *

Test::Pod::Coverage

=item *

Test::Pod::Spelling::CommonMistakes

=item *

Test::Script

=item *

Test::Spelling

=item *

Test::Version

=item *

Text::Hunspell::FFI

=item *

URI::ws

=item *

UUID::FFI

=item *

WebService::DailyConnect

=item *

WebService::LiveJournal

=item *

Win32::ErrorMode

=item *

Win32::Getppid

=item *

Win32::Process::Info

=item *

Win32::Shortcut::Readlink

=item *

Win32API::ProcessStatus

=item *

WWW::Bugzilla::BugTree

=item *

YAML

=item *

YAML::XS

=back

=cut

1;
