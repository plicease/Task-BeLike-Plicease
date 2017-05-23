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

Alien::Base

=item *

Alien::Base::ModuleBuild

=item *

Alien::Base::Wrapper

=item *

Alien::bison

=item *

Alien::Build

=item *

Alien::Build::MB

=item *

Alien::Build::Plugin::Fetch::Cache

=item *

Alien::bz2::Installer

=item *

Alien::CMake

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

Alien::Hunspell

=item *

Alien::Libarchive

=item *

Alien::Libarchive3

=item *

Alien::Libarchive::Installer

=item *

Alien::Libbz2

=item *

Alien::libtool24

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

Alien::patch

=item *

Alien::pkgconf

=item *

Alien::xz

=item *

AnyEvent::Finger

=item *

AnyEvent::FTP

=item *

AnyEvent::Git::Wrapper

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

App::palien

=item *

App::pwhich

=item *

App::RegexFileUtils

=item *

App::spaceless

=item *

Archive::Ar::Libarchive

=item *

Archive::Libarchive::Any

=item *

Archive::Libarchive::FFI

=item *

Archive::Libarchive::XS

=item *

Authen::Simple::PlugAuth

=item *

autodie

=item *

Class::Inspector

=item *

Clustericious

=item *

Clustericious::Admin

=item *

Clustericious::Coder::BSON

=item *

Cpanel::JSON::XS

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

Dist::Zilla::Plugin::CSS::Compressor

=item *

Dist::Zilla::Plugin::InsertExample

=item *

Dist::Zilla::Plugin::JavaScript::Minifier

=item *

Dist::Zilla::Plugin::jQuery

=item *

Dist::Zilla::Plugin::MathInt64

=item *

Dist::Zilla::Plugin::Meta::Dynamic::Config

=item *

Dist::Zilla::Plugin::OurPkgVersion

=item *

Dist::Zilla::Plugin::PPPort

=item *

Dist::Zilla::Plugin::Template::Tiny

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

FFI::Platypus::Type::StringArray

=item *

FFI::TinyCC

=item *

FFI::Util

=item *

File::LibMagic::FFI

=item *

File::Listing

=item *

File::Listing::Ftpcopy

=item *

File::Touch

=item *

File::Which

=item *

JSON

=item *

Lingua::Alphabet::Phonetic::LAPD

=item *

local::lib

=item *

Log::Log4perl

=item *

Log::Log4perl::Appender::TAP

=item *

Module::Build::FFI

=item *

Module::CoreList

=item *

Module::Which

=item *

Mojolicious

=item *

Mojolicious::Plugin::Ident

=item *

Mojolicious::Plugin::TtRenderer

=item *

Monkey::Patch

=item *

Moose

=item *

Net::DNS

=item *

Photography::DX

=item *

Photography::EV

=item *

PkgConfig

=item *

PkgConfig::LibPkgConf

=item *

PlugAuth

=item *

PlugAuth::Client::Tiny

=item *

PlugAuth::Client::Tiny::Apache2AuthenHandler

=item *

PlugAuth::Client::Tiny::Apache2AuthzHandler

=item *

PlugAuth::Plugin::AuthenSimple

=item *

PlugAuth::Plugin::DBIAuth

=item *

PlugAuth::Plugin::Finger

=item *

PlugAuth::Plugin::LDAP

=item *

Pod::Abstract

=item *

Pod::Perldoc

=item *

Pod::POM::Web

=item *

Role::Tiny

=item *

Rose::DB

=item *

Rose::DB::Object

=item *

Sereal::Decoder

=item *

Sereal::Encoder

=item *

Shell::Config::Generate

=item *

Shell::Guess

=item *

String::Template

=item *

Template

=item *

Template::Tiny

=item *

Term::EditLine

=item *

Test::Alien

=item *

Test::CChecker

=item *

Test::Clustericious::Blocking

=item *

Test::Clustericious::Cluster

=item *

Test::CPAN::Changes

=item *

Test::Differences

=item *

Test::Dir

=item *

Test::EOL

=item *

Test::Exec

=item *

Test::File

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

Test::Script::Async

=item *

Test::Spelling

=item *

Test::Version

=item *

Text::Hunspell::FFI

=item *

Text::Tabs

=item *

Try::Tiny

=item *

URI

=item *

URI::Encode

=item *

URI::ws

=item *

UUID::FFI

=item *

Validate::Tiny

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

XML::Simple

=item *

XML::Writer

=item *

YAML

=item *

YAML::XS

=item *

Yars

=item *

Yars::Command::yars_exercise

=back

=cut

1;
