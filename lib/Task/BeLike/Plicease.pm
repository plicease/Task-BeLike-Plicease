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

Acme::Color::Rust

=item *

Acme::Ford::Prefect

=item *

Acme::Ford::Prefect2

=item *

Acme::Ford::Prefect2::FFI

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

Alien::Build::Plugin::Download::GitHub

=item *

Alien::Build::Plugin::Download::GitLab

=item *

Alien::Build::Plugin::Extract::Libarchive

=item *

Alien::Build::Plugin::Fetch::Cache

=item *

Alien::Build::Plugin::Fetch::HostAllowList

=item *

Alien::Build::Plugin::Fetch::HostBlockList

=item *

Alien::Build::Plugin::Fetch::Prompt

=item *

Alien::Build::Plugin::Fetch::Rewrite

=item *

Alien::Build::Plugin::Probe::GnuWin32

=item *

Alien::Build::Plugin::Probe::Override

=item *

Alien::cargo

=item *

Alien::cargo::capi

=item *

Alien::cargo::clone

=item *

Alien::castxml

=item *

Alien::chromaprint

=item *

Alien::CMake

=item *

Alien::cmake3

=item *

Alien::cue

=item *

Alien::curl

=item *

Alien::Editline

=item *

Alien::Expat

=item *

Alien::FFI

=item *

Alien::flex

=item *

Alien::ghostunnel

=item *

Alien::gmake

=item *

Alien::GMP

=item *

Alien::GSL

=item *

Alien::gzip

=item *

Alien::help2man

=item *

Alien::Hunspell

=item *

Alien::Libarchive3

=item *

Alien::Libbz2

=item *

Alien::libnewrelic

=item *

Alien::libpcre

=item *

Alien::Librdkafka

=item *

Alien::LibreSSL

=item *

Alien::libtool

=item *

Alien::libuuid

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

Alien::nasm

=item *

Alien::Nettle

=item *

Alien::OpenSSL

=item *

Alien::patch

=item *

Alien::pkgconf

=item *

Alien::Role::Alt

=item *

Alien::Role::Dino

=item *

Alien::unzip

=item *

Alien::wasmtime

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

App::af

=item *

App::cpangitify

=item *

App::cpanminus

=item *

App::plasm

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

App::supertouch

=item *

App::tarweb

=item *

App::whichdll

=item *

Archive::Ar::Libarchive

=item *

Archive::Libarchive

=item *

Archive::Libarchive::Compress

=item *

Archive::Libarchive::Extract

=item *

Archive::Libarchive::Peek

=item *

Archive::Libarchive::Unwrap

=item *

Browser::Start

=item *

Clang::CastXML

=item *

Class::Inspector

=item *

Const::Introspect::C

=item *

Cpanel::JSON::XS

=item *

Data::Section::Pluggable

=item *

Data::Section::Pluggable::Plugin::Yaml

=item *

Data::Section::Writer

=item *

DBD::SQLite

=item *

Devel::ebug

=item *

Devel::ebug::HTTP

=item *

Dist::Zilla::App::Command::aliendeps

=item *

Dist::Zilla::MintingProfile::AlienBuild

=item *

Dist::Zilla::MintingProfile::FFI

=item *

Dist::Zilla::Plugin::AlienBuild

=item *

Dist::Zilla::Plugin::Alt

=item *

Dist::Zilla::Plugin::ArchiveTar

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

Dist::Zilla::Plugin::Libarchive

=item *

Dist::Zilla::Plugin::MathInt64

=item *

Dist::Zilla::Plugin::Meta::Dynamic::Config

=item *

Dist::Zilla::Plugin::OurPkgVersion

=item *

Dist::Zilla::Plugin::PPPort

=item *

Dist::Zilla::Plugin::Test::Version

=item *

Dist::Zilla::Plugin::TextTabs

=item *

Dist::Zilla::PluginBundle::Author::Plicease

=item *

Env::ShellWords

=item *

Environment::Is

=item *

Eval::LineNumbers

=item *

Exception::Class::DBI

=item *

Exception::FFI::ErrorCode

=item *

FFI

=item *

FFI::C

=item *

FFI::C::Stat

=item *

FFI::CheckLib

=item *

FFI::ExtractSymbols

=item *

FFI::Platypus

=item *

FFI::Platypus::Declare

=item *

FFI::Platypus::Lang::CPP

=item *

FFI::Platypus::Lang::CPP::Demangle::XS

=item *

FFI::Platypus::Lang::Fortran

=item *

FFI::Platypus::Lang::Go

=item *

FFI::Platypus::Lang::Pascal

=item *

FFI::Platypus::Lang::Rust

=item *

FFI::Platypus::Lang::Zig

=item *

FFI::Platypus::Legacy::Raw

=item *

FFI::Platypus::Record::StringArray

=item *

FFI::Platypus::Type::Enum

=item *

FFI::Platypus::Type::PtrObject

=item *

FFI::TinyCC

=item *

FFI::TinyCC::Inline

=item *

File::BaseDir

=item *

File::LibMagic::FFI

=item *

File::Listing

=item *

File::Listing::Ftpcopy

=item *

File::ReadBackwards

=item *

File::ShareDir::Dist

=item *

File::Which

=item *

File::XDG

=item *

JSON::LD

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

Memcached::RateLimit

=item *

Module::Which

=item *

Mojolicious::Plugin::Ident

=item *

Mojolicious::Plugin::TtRenderer

=item *

MooseX::Types::JSON

=item *

NewFangle

=item *

Package::Checkpoint

=item *

PeekPoke::FFI

=item *

Perl::Critic::Plicease

=item *

Photography::DX

=item *

Photography::EV

=item *

PkgConfig

=item *

PkgConfig::LibPkgConf

=item *

Plack::App::GitHubPages::Faux

=item *

Plack::App::Libarchive

=item *

Plack::Middleware::Zstandard

=item *

Pod::Simple::Words

=item *

PPIx::DocumentName

=item *

Return::MultiLevel

=item *

Shell::Config::Generate

=item *

Shell::Guess

=item *

SQL::Formatter

=item *

String::Template

=item *

Task::AlienDev

=item *

Task::FFIDev

=item *

Term::Clui

=item *

Term::EditLine

=item *

Test2::Plugin::FauxHomeDir

=item *

Test2::Tools::ComboObject

=item *

Test2::Tools::FFI

=item *

Test2::Tools::HTTP

=item *

Test2::Tools::HTTP::UA::Mojo

=item *

Test2::Tools::JSON::Pointer

=item *

Test2::Tools::MemoryCycle

=item *

Test2::Tools::PerlCritic

=item *

Test2::Tools::Process

=item *

Test2::Tools::Rustfmt

=item *

Test2::Tools::URL

=item *

Test::Alien::CPP

=item *

Test::Archive::Libarchive

=item *

Test::CPAN::Changes

=item *

Test::EOL

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

Text::HumanComputerWords

=item *

Text::Hunspell::FFI

=item *

URI::ws

=item *

UUID::FFI

=item *

Wasm

=item *

Win32::ErrorMode

=item *

Win32::Getppid

=item *

Win32::Process::Info

=item *

Win32::Shortcut::Readlink

=item *

Win32::Vcpkg

=item *

Win32API::ProcessStatus

=item *

WWW::Bugzilla::BugTree

=item *

YAML

=back

=cut

1;
