package Task::BeLike::Plicease;

use strict;
use warnings;
use v5.10;

# ABSTRACT: Modules Plicease Uses.
# VERSION

=head1 SYNOPSIS

 cpan Task::BeLike::Plicease

=head1 DESCRIPTION

Modules that I like to have installed when I am doing my Perl thing.

Some modules are not installed on MSWin32 or cygwin if they are known
not to work on those platforms.  See the Makefile.PL that comes with
this distribution for details.

=over 4

=item *

AnyEvent

=item *

AnyEvent::Open3::Simple

=item *

App::Ack

=item *

App::cpanminus

=item *

App::RegexFileUtils

=item *

Authen::Simple

=item *

autodie

=item *

Clustericious

=item *

Clustericious::Client

=item *

Clustericious::Config

=item *

Clustericious::Log

=item *

Crypt::PasswdMD5

=item *

Data::Downloader

=item *

DBD::mysqlPP

=item *

DBD::PgPP

=item *

DBD::SQLite

=item *

DBI

=item *

Devel::StackTrace

=item *

Digest::MD5

=item *

File::chdir

=item *

File::IgnoreReadonly

=item *

File::Touch

=item *

IPC::Run

=item *

JSON

=item *

JSON::XS

=item *

Lingua::Alphabet::Phonetic::LAPD

=item *

Log::Log4perl

=item *

Module::CoreList

=item *

Module::Which

=item *

Mojolicious

=item *

Mojolicious::Plugin::Ident

=item *

Mojolicious::Plugin::SslAuth

=item *

Mojolicious::Plugin::TtRenderer

=item *

Moose

=item *

Net::DNS

=item *

Number::Bytes::Human

=item *

Perl::Critic

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

Scalar::Does

=item *

Shell::Config::Generate

=item *

Shell::Guess

=item *

String::Template

=item *

Template

=item *

Test::Differences

=item *

Test::Dir

=item *

Test::Dir

=item *

Test::EOL

=item *

Test::File

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

Test::Spelling

=item *

Test::Strict

=item *

URI

=item *

URI::Encode

=item *

WebService::TwitterBootstrap::Download::Custom

=item *

XML::Rabbit

=item *

XML::Simple

=item *

XML::Writer

=item *

YAML

=item *

YAML::XS

=back

=cut

use YAML ();
use YAML::XS ();
use JSON ();
use JSON::XS ();
use Pod::POM::Web ();
use XML::Simple ();
use XML::Writer ();
use IPC::Run ();
use Moose ();
use AnyEvent ();
use URI::Encode ();
use Digest::MD5 ();
use URI ();
use Net::DNS ();
use Test::File ();
use Test::Dir ();
use Number::Bytes::Human ();
use Mojolicious ();
use Mojolicious::Plugin::TtRenderer ();
use Mojolicious::Plugin::SslAuth ();
use App::Ack ();
use Perl::Critic ();
use Log::Log4perl ();
use Template ();
use App::cpanminus ();
use File::chdir ();
use DBI ();
use DBD::SQLite ();
use Test::EOL ();
use Test::Fixme ();
use Test::NoTabs ();
use Rose::DB ();
use Rose::DB::Object ();
use Test::Spelling ();
use Test::Memory::Cycle ();
use Test::Pod ();
use Test::Pod::Coverage ();
use Test::Pod::Spelling::CommonMistakes ();
use Test::File ();
use Test::Dir ();
use Module::Which ();
use Lingua::Alphabet::Phonetic::LAPD ();
use Mojolicious::Plugin::Ident ();
use Devel::StackTrace ();
use Clustericious::Client ();
use Clustericious::Config ();
use Clustericious::Log ();
use String::Template ();
use autodie ();
use DBD::PgPP ();
use DBD::mysqlPP ();
use Test::Differences ();
use App::RegexFileUtils ();
use Shell::Config::Generate ();
use Shell::Guess ();
use WebService::TwitterBootstrap::Download::Custom ();
use Role::Tiny ();
use Scalar::Does ();
use Crypt::PasswdMD5 ();
use File::Touch ();
use Authen::Simple ();

# core, but in separate rpms for Fedora
use Pod::Perldoc ();
use Module::CoreList ();

# http://www.modernperlbooks.com/mt/2012/10/i-stopped-parsing-xml-thanks-to-xmlrabbit.html
use XML::Rabbit ();
use File::IgnoreReadonly ();

# TODO: Rose::Planter
# and   Module::Build::Database
# would be nice but depend on DBD::Pg

1;

