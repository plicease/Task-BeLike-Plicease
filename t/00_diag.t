use strict;
use warnings;
use Config;
use Test::More tests => 1;

# This .t file is generated.
# make changes instead to dist.ini

my %modules;
my $post_diag;

BEGIN { eval q{ use EV; } }
$modules{$_} = $_ for qw(
  Acme::Alien::DontPanic
  Acme::Ford::Prefect
  Acme::Ford::Prefect::FFI
  Alien
  Alien::Base
  Alien::CMake
  Alien::Editline
  Alien::FFI
  Alien::Hunspell
  Alien::LibYAML
  Alien::Libarchive
  Alien::Libarchive::Installer
  Alien::Libbz2
  Alien::MSYS
  Alien::Packages::Cygwin
  Alien::bison
  Alien::bz2
  Alien::bz2::Installer
  Alien::flex
  Alien::gmake
  Alien::libtool24
  Alien::m4
  Alien::nasm
  Alien::o2dll
  Alien::patch
  AnyEvent::FTP
  AnyEvent::Finger
  AnyEvent::Git::Wrapper
  AnyEvent::Ident
  AnyEvent::Open3::Simple
  AnyEvent::WebSocket::Client
  App::Ack
  App::RegexFileUtils
  App::cpangitify
  App::cpanminus
  App::palien
  App::pwhich
  App::spaceless
  App::which_package
  Archive::Ar::Libarchive
  Archive::Libarchive::Any
  Archive::Libarchive::FFI
  Archive::Libarchive::XS
  Authen::Simple::PlugAuth
  Clustericious
  Clustericious::Admin
  Clustericious::Coder::BSON
  Cpanel::JSON::XS
  DBD::PgPP
  DBD::SQLite
  DBD::mysqlPP
  Devel::StackTrace
  Digest::MD5
  Dist::Zilla::App::Command::aliendeps
  Dist::Zilla::Plugin::Alt
  Dist::Zilla::Plugin::Author::Plicease
  Dist::Zilla::Plugin::CSS::Compressor
  Dist::Zilla::Plugin::InsertExample
  Dist::Zilla::Plugin::JavaScript::Minifier
  Dist::Zilla::Plugin::MathInt64
  Dist::Zilla::Plugin::Meta::Dynamic::Config
  Dist::Zilla::Plugin::OurPkgVersion
  Dist::Zilla::Plugin::PPPort
  Dist::Zilla::Plugin::Template::Tiny
  Dist::Zilla::Plugin::Test::Version
  Dist::Zilla::Plugin::TextTabs
  Dist::Zilla::Plugin::jQuery
  Dist::Zilla::PluginBundle::Author::Plicease
  EV
  FFI
  FFI::CheckLib
  FFI::ExtractSymbols
  FFI::Platypus
  FFI::Platypus::Lang::CPP
  FFI::Platypus::Lang::CPP::Demangle::XS
  FFI::Platypus::Lang::Fortran
  FFI::Platypus::Lang::Pascal
  FFI::Platypus::Lang::Rust
  FFI::Platypus::Type::StringArray
  FFI::TinyCC
  FFI::Util
  File::LibMagic::FFI
  File::Listing
  File::Listing::Ftpcopy
  File::Touch
  File::Which
  JSON
  Lingua::Alphabet::Phonetic::LAPD
  Log::Log4perl
  Log::Log4perl::Appender::TAP
  Module::Build
  Module::CoreList
  Module::Which
  Mojolicious
  Mojolicious::Plugin::Ident
  Mojolicious::Plugin::TtRenderer
  Monkey::Patch
  Moose
  Net::DNS
  Photography::DX
  Photography::EV
  PkgConfig
  PlugAuth
  PlugAuth::Client::Tiny
  PlugAuth::Client::Tiny::Apache2AuthenHandler
  PlugAuth::Client::Tiny::Apache2AuthzHandler
  PlugAuth::Plugin::AuthenSimple
  PlugAuth::Plugin::DBIAuth
  PlugAuth::Plugin::Finger
  PlugAuth::Plugin::LDAP
  Pod::Abstract
  Pod::POM::Web
  Pod::Perldoc
  Role::Tiny
  Rose::DB
  Rose::DB::Object
  Sereal::Decoder
  Sereal::Encoder
  Shell::Config::Generate
  Shell::Guess
  String::Template
  Template
  Template::Tiny
  Term::EditLine
  Test::Alien
  Test::CChecker
  Test::CPAN::Changes
  Test::Clustericious::Blocking
  Test::Clustericious::Cluster
  Test::Differences
  Test::Dir
  Test::EOL
  Test::Exec
  Test::File
  Test::Fixme
  Test::Memory::Cycle
  Test::NoTabs
  Test::Pod
  Test::Pod::Coverage
  Test::Pod::Spelling::CommonMistakes
  Test::Script
  Test::Script::Async
  Test::Spelling
  Test::Version
  Text::Hunspell::FFI
  Text::Tabs
  Try::Tiny
  URI
  URI::Encode
  URI::ws
  UUID::FFI
  Validate::Tiny
  WWW::Bugzilla::BugTree
  WebService::LiveJournal
  Win32::ErrorMode
  Win32::Getppid
  Win32::Process::Info
  Win32::Shortcut::Readlink
  Win32API::ProcessStatus
  XML::Simple
  XML::Writer
  YAML
  YAML::XS
  Yars
  Yars::Command::yars_exercise
  autodie
  local::lib
);



my @modules = sort keys %modules;

sub spacer ()
{
  diag '';
  diag '';
  diag '';
}

pass 'okay';

my $max = 1;
$max = $_ > $max ? $_ : $max for map { length $_ } @modules;
our $format = "%-${max}s %s"; 

spacer;

my @keys = sort grep /(MOJO|PERL|\A(LC|HARNESS)_|\A(SHELL|LANG)\Z)/i, keys %ENV;

if(@keys > 0)
{
  diag "$_=$ENV{$_}" for @keys;
  
  if($ENV{PERL5LIB})
  {
    spacer;
    diag "PERL5LIB path";
    diag $_ for split $Config{path_sep}, $ENV{PERL5LIB};
    
  }
  elsif($ENV{PERLLIB})
  {
    spacer;
    diag "PERLLIB path";
    diag $_ for split $Config{path_sep}, $ENV{PERLLIB};
  }
  
  spacer;
}

diag sprintf $format, 'perl ', $];

foreach my $module (@modules)
{
  if(eval qq{ require $module; 1 })
  {
    my $ver = eval qq{ \$$module\::VERSION };
    $ver = 'undef' unless defined $ver;
    diag sprintf $format, $module, $ver;
  }
  else
  {
    diag sprintf $format, $module, '-';
  }
}

if($post_diag)
{
  spacer;
  $post_diag->();
}

spacer;

