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
  Acme::Alien::DontPanic2
  Acme::Ford::Prefect
  Acme::Ford::Prefect2
  Acme::Ford::Prefect::FFI
  Alien
  Alien::Alien
  Alien::Autotools
  Alien::Base::ModuleBuild
  Alien::Build
  Alien::Build::Git
  Alien::Build::MB
  Alien::Build::Plugin::Decode::SourceForge
  Alien::Build::Plugin::Fetch::Cache
  Alien::Build::Plugin::Fetch::Prompt
  Alien::Build::Plugin::Fetch::Rewrite
  Alien::Build::Plugin::Probe::GnuWin32
  Alien::CMake
  Alien::Editline
  Alien::FFI
  Alien::GMP
  Alien::Hunspell
  Alien::LZO
  Alien::LibYAML
  Alien::Libarchive
  Alien::Libarchive3
  Alien::Libarchive::Installer
  Alien::Libbz2
  Alien::Libxml2
  Alien::MSYS
  Alien::MSYS2
  Alien::Nettle
  Alien::Role::Alt
  Alien::Role::Dino
  Alien::autoconf
  Alien::automake
  Alien::bison
  Alien::bz2::Installer
  Alien::cmake3
  Alien::curl
  Alien::flex
  Alien::gmake
  Alien::gzip
  Alien::libtool
  Alien::libtool24
  Alien::m4
  Alien::nasm
  Alien::patch
  Alien::pkgconf
  Alien::xz
  AnyEvent::FTP
  AnyEvent::Finger
  AnyEvent::Ident
  AnyEvent::Open3::Simple
  AnyEvent::WebSocket::Client
  App::Ack
  App::RegexFileUtils
  App::af
  App::cpangitify
  App::cpanminus
  App::pwhich
  App::spaceless
  Archive::Ar::Libarchive
  Archive::Libarchive::Any
  Archive::Libarchive::FFI
  Archive::Libarchive::XS
  Authen::Simple::PlugAuth
  Class::Inspector
  Clustericious
  Clustericious::Admin
  Clustericious::Coder::BSON
  DBD::PgPP
  DBD::SQLite
  DBD::mysqlPP
  Devel::StackTrace
  Digest::MD5
  Dist::Zilla::App::Command::aliendeps
  Dist::Zilla::Plugin::AlienBuild
  Dist::Zilla::Plugin::Alt
  Dist::Zilla::Plugin::Author::Plicease
  Dist::Zilla::Plugin::CSS::Compressor
  Dist::Zilla::Plugin::CommentOut
  Dist::Zilla::Plugin::InsertExample
  Dist::Zilla::Plugin::JavaScript::Minifier
  Dist::Zilla::Plugin::MathInt64
  Dist::Zilla::Plugin::Meta::Dynamic::Config
  Dist::Zilla::Plugin::OurPkgVersion
  Dist::Zilla::Plugin::PPPort
  Dist::Zilla::Plugin::Template::Tiny
  Dist::Zilla::Plugin::Test::Version
  Dist::Zilla::Plugin::TextTabs
  Dist::Zilla::PluginBundle::Author::Plicease
  EV
  Env::ShellWords
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
  File::ShareDir::Dist
  File::Which
  JSON
  JSON::MaybeXS
  JSON::PP
  JSON::XS
  Lingua::Alphabet::Phonetic::LAPD
  Log::Log4perl
  Log::Log4perl::Appender::TAP
  Module::Build
  Module::Build::FFI
  Module::Which
  Mojolicious
  Mojolicious::Plugin::Ident
  Mojolicious::Plugin::TtRenderer
  Monkey::Patch
  Moose
  Photography::DX
  Photography::EV
  PkgConfig
  PkgConfig::LibPkgConf
  PlugAuth
  PlugAuth::Client::Tiny
  PlugAuth::Client::Tiny::Apache2AuthenHandler
  PlugAuth::Client::Tiny::Apache2AuthzHandler
  PlugAuth::Plugin::AuthenSimple
  PlugAuth::Plugin::DBIAuth
  PlugAuth::Plugin::Finger
  PlugAuth::Plugin::LDAP
  Pod::POM::Web
  Pod::Perldoc
  Role::Tiny
  Shell::Config::Generate
  Shell::Guess
  String::Template
  Template
  Term::EditLine
  Test2::Plugin::FauxHomeDir
  Test2::Tools::URL
  Test::Alien::CPP
  Test::CChecker
  Test::CPAN::Changes
  Test::Clustericious::Blocking
  Test::Clustericious::Cluster
  Test::EOL
  Test::Exec
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

