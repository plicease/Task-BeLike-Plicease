use strict;
use warnings;
use Config;
use Test::More tests => 1;

# This .t file is generated.
# make changes instead to dist.ini

my %modules;
my $post_diag;

$modules{$_} = $_ for qw(
  Acme::Alien::DontPanic
  Acme::Alien::DontPanic2
  Acme::Ford::Prefect
  Acme::Ford::Prefect2
  Acme::Ford::Prefect2::FFI
  Acme::Ford::Prefect::FFI
  Alien
  Alien::Alien
  Alien::Autotools
  Alien::Base::ModuleBuild
  Alien::Build
  Alien::Build::Git
  Alien::Build::MB
  Alien::Build::Plugin::Decode::SourceForge
  Alien::Build::Plugin::Download::GitHub
  Alien::Build::Plugin::Fetch::Cache
  Alien::Build::Plugin::Fetch::Prompt
  Alien::Build::Plugin::Fetch::Rewrite
  Alien::Build::Plugin::Probe::GnuWin32
  Alien::Build::Plugin::Probe::Override
  Alien::CMake
  Alien::Editline
  Alien::Expat
  Alien::FFI
  Alien::GMP
  Alien::Hunspell
  Alien::LZO
  Alien::LibYAML
  Alien::Libarchive3
  Alien::Libbz2
  Alien::Librdkafka
  Alien::LibreSSL
  Alien::Libxml2
  Alien::MSYS
  Alien::Nettle
  Alien::Role::Alt
  Alien::Role::Dino
  Alien::autoconf
  Alien::automake
  Alien::bison
  Alien::castxml
  Alien::chromaprint
  Alien::cmake3
  Alien::curl
  Alien::flex
  Alien::gmake
  Alien::gzip
  Alien::help2man
  Alien::libnewrelic
  Alien::libpcre
  Alien::libtool
  Alien::libuuid
  Alien::m4
  Alien::nasm
  Alien::patch
  Alien::pkgconf
  Alien::unzip
  Alien::wasmtime
  Alien::xz
  AnyEvent::FTP
  AnyEvent::Finger
  AnyEvent::Ident
  AnyEvent::Open3::Simple
  AnyEvent::WebSocket::Client
  App::Ack
  App::Prove::Plugin::TermTable
  App::Prove::Plugin::TermTableStty
  App::RegexFileUtils
  App::af
  App::cpangitify
  App::cpanminus
  App::plasm
  App::pwhich
  App::spaceless
  App::supertouch
  App::whichdll
  Archive::Ar::Libarchive
  Archive::Libarchive::Any
  Archive::Libarchive::XS
  Archive::Tar::Wrapper
  Browser::Start
  Clang::CastXML
  Class::Inspector
  Const::Introspect::C
  Cpanel::JSON::XS
  DBD::PgPP
  DBD::SQLite
  DBD::mysqlPP
  Devel::StackTrace
  Devel::ebug
  Digest::MD5
  Dist::Zilla::App::Command::aliendeps
  Dist::Zilla::Plugin::AlienBuild
  Dist::Zilla::Plugin::Alt
  Dist::Zilla::Plugin::Bootstrap::lib
  Dist::Zilla::Plugin::CSS::Compressor
  Dist::Zilla::Plugin::CommentOut
  Dist::Zilla::Plugin::DynamicPrereqs
  Dist::Zilla::Plugin::FFI
  Dist::Zilla::Plugin::InsertExample
  Dist::Zilla::Plugin::JavaScript::Minifier
  Dist::Zilla::Plugin::MathInt64
  Dist::Zilla::Plugin::Meta::Dynamic::Config
  Dist::Zilla::Plugin::OurPkgVersion
  Dist::Zilla::Plugin::PPPort
  Dist::Zilla::Plugin::Test::Version
  Dist::Zilla::Plugin::TextTabs
  Dist::Zilla::PluginBundle::Author::Plicease
  Env::ShellWords
  Exception::Class::DBI
  ExtUtils::MakeMaker
  FFI
  FFI::C
  FFI::CheckLib
  FFI::ExtractSymbols
  FFI::Platypus
  FFI::Platypus::Lang::CPP
  FFI::Platypus::Lang::CPP::Demangle::XS
  FFI::Platypus::Lang::Fortran
  FFI::Platypus::Lang::Go
  FFI::Platypus::Lang::Pascal
  FFI::Platypus::Lang::Rust
  FFI::Platypus::Legacy::Raw
  FFI::Platypus::Record::StringArray
  FFI::Platypus::Type::Enum
  FFI::Platypus::Type::PtrObject
  FFI::TinyCC
  FFI::TinyCC::Inline
  File::LibMagic::FFI
  File::Listing
  File::Listing::Ftpcopy
  File::ShareDir::Dist
  File::Which
  JSON
  JSON::MaybeXS
  JSON::PP
  JSON::XS
  Kafka::Librd
  Lingua::Alphabet::Phonetic::LAPD
  Log::Log4perl::Appender::TAP
  Module::Which
  Mojolicious::Plugin::Ident
  Mojolicious::Plugin::TtRenderer
  Moose
  NewFangle
  PeekPoke::FFI
  Perl::Critic::Plicease
  Photography::DX
  Photography::EV
  PkgConfig
  PkgConfig::LibPkgConf
  Shell::Config::Generate
  Shell::Guess
  String::Template
  Term::Clui
  Term::EditLine
  Test2::Plugin::FauxHomeDir
  Test2::Tools::FFI
  Test2::Tools::HTTP
  Test2::Tools::HTTP::UA::Mojo
  Test2::Tools::JSON::Pointer
  Test2::Tools::PerlCritic
  Test2::Tools::URL
  Test::Alien::CPP
  Test::CChecker
  Test::CPAN::Changes
  Test::EOL
  Test::Exec
  Test::Fixme
  Test::Memory::Cycle
  Test::NoTabs
  Test::Pod
  Test::Pod::Coverage
  Test::Pod::Spelling::CommonMistakes
  Test::Script
  Test::Spelling
  Test::Version
  Text::Hunspell
  Text::Hunspell::FFI
  URI::ws
  UUID::FFI
  WWW::Bugzilla::BugTree
  Wasm
  WebService::DailyConnect
  Win32::ErrorMode
  Win32::Getppid
  Win32::Process::Info
  Win32::Shortcut::Readlink
  Win32::Vcpkg
  Win32API::ProcessStatus
  YAML
  YAML::XS
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
  my $pm = "$module.pm";
  $pm =~ s{::}{/}g;
  if(eval { require $pm; 1 })
  {
    my $ver = eval { $module->VERSION };
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

