package My::ModuleBuild;

use strict;
use warnings;
use Config;
use base qw( Module::Build );

sub new
{
  my($class, %args) = @_;

  my @skip;

  if($^O eq 'MSWin32' && $Config{ccname} eq 'cl')
  {
    push @skip, qw(
      Acme::Alien::DontPanic
      Acme::Alien::DontPanic2
      Acme::Ford::Prefect
      Acme::Ford::Prefect2
      Acme::Ford::Prefect::FFI

      Alien::Autotools
      Alien::autoconf
      Alien::automake
      Alien::libtool
      Alien::libuuid
      Alien::m4
      Alien::patch
      Alien::unzip
      Alien::xz
      Alien::Expat
      Alien::GMP
      Alien::LZO
      Alien::LibYAML
      Alien::Nettle
      Alien::chromaprint
      Alien::curl

      FFI::Platypus::Lang::CPP::Demangle::XS

      Archive::Tar::Wrapper

      Alien::Build::Plugin::Fetch::Cache
      Alien::Role::Dino
      Dist::Zilla::Plugin::JavaScript::Minifier
    );
  }

  if($^O eq 'MSWin32')
  {
    push @skip, qw(
      WWW::Bugzilla::BugTree
      Term::Clui
      Archive::Libarchive::FFI
      Test::Vars
      WebService::LiveJournal
      Term::EditLine
      Alien::Editline
      Alien::flex
      Alien::Hunspell

      App::cpangitify
      FFI::ExtractSymbols
      FFI::Platypus::Lang::Fortran
      FFI::Platypus::Lang::CPP
      FFI::Platypus::Lang::Pascal
      Clustericious::Admin
      File::LibMagic::FFI
      Yars::Command::yars_exercise

      Rose::DB
      Rose::DB::Object
      Alien::Libbz2

      Test::Clustericious::Blocking

      Archive::Libarchive::Any
      Archive::Libarchive::XS
      Archive::Libarchive::FFI
      Archive::Ar::Libarchive
      Alien::MSYS2
      Alien::pkgconf
      Alien::Alien
      Alien::Libarchive3
      Alien::bison
      AnyEvent::FTP
      PkgConfig::LibPkgConf
      App::Prove::Plugin::TermTable
      App::Prove::Plugin::TermTableStty
      Text::Hunspell::FFI

      Alien::Librdkafka
      Kafka::Librd
    );

    # could probably fix the Alien::Hunspell error:
    #
    # localename.c: In function '_nl_locale_name_default':
    # localename.c:1390:4: error: duplicate case value
    #     case SUBLANG_SINDHI_AFGHANISTAN: return "sd_AF";
    #     ^
    # localename.c:1389:4: error: previously used here
    #     case SUBLANG_SINDHI_PAKISTAN: return "sd_PK";
    #     ^
    # make[2]: *** [localename.o] Error 1

    if($] >= 5.024)
    {
      push @skip, 'Mojolicious::Plugin::Ident';
    }
  }
  else
  {
    push @skip, 'Alien::Libarchive::MSWin32';
    push @skip, 'Alien::MSYS2';
  }

  if($^O eq 'cygwin')
  {
    push @skip, 'FFI::TinyCC';
  }
  else
  {
    push @skip, 'Alien::Packages::Cygwin';
  }

  if($^O =~ /^(MSWin32|cygwin)$/)
  {
    push @skip, qw(
      Alien::Editline
      Term::EditLine
    );
  }
  else
  {
    push @skip, qw(
      Alien::o2dll
      Win32::ErrorMode
      Win32API::ProcessStatus
    );
  }

  if($^O eq 'darwin')
  {
    push @skip, qw(
      WWW::Bugzilla::BugTree
      File::LibMagic::FFI
      FFI::TinyCC
      FFI::Platypus::Lang::CPP
    );
  }

  if($^O eq 'linux')
  {
    # archname=x86_64-linux
    if($Config{archname} !~ /^x86_64/)
    {
    push @skip, qw(
      NewRelic::Agent::FFI
      Alien::nragent
    );
    }
  }
  else
  {
    # TODO: alienize https://sourceforge.net/projects/libuuid/ for UUID::FFI?
    push @skip, qw(
      UUID::FFI
      NewRelic::Agent::FFI
      Alien::nragent
    );
  }

  unless($] >= 5.008009)
  {
    push @skip,
      'Dist::Zilla::Plugin::jQuery', # due to Bread::Board
      'FFI::TinyCC',            # in practice does not work on 5.8.8
      'File::Listing::Ftpcopy', # in practice does not work on 5.8.8
      'Sereal::Encoder',        # https://github.com/Sereal/Sereal/issues/95
    ;
  }

  unless($] >= 5.010000)
  {
    push @skip,
      'Archive::Libarchive::FFI',
      'WebService::LiveJournal',
      # this one was working but then stopped
      # at some point.
      'AnyEvent::WebSocket::Client',
      # Appears to use //
      'Validate::Tiny',
    ;
  }

  unless($] >= 5.010001)
  {
    push @skip,
      'AnyEvent::FTP',
      'App::cpangitify',
      'App::spaceless',
      'Clustericious',
      'Clustericious::Admin',
      'Dist::Zilla::PluginBundle::ACPS',
      'Mojolicious',
      'Mojolicious::Plugin::Ident',
      'Mojolicious::Plugin::TtRenderer',
      'PlugAuth',
      'PlugAuth::Plugin::DBIAuth',
      'PlugAuth::Plugin::LDAP',
      'PlugAuth::Plugin::AuthenSimple',
      'PlugAuth::Plugin::Finger',
      'Test::Clustericious::Cluster',
      'Yars',
      'Yars::Command::yars_exercise',
      'Test::Clustericious::Blocking',
    ;
  }

  unless($] >= 5.014000)
  {
    push @skip,
      'WWW::Bugzilla::BugTree',
    ;
  }

  unless($] >= 5.020000)
  {
    push @skip, 'Photography::EV';
  }

  unless($] >= 5.022000)
  {
    push @skip, 'Photography::DX';
  }

  unless(eval q{ use  Apache2::Const (); 1 })
  {
    push @skip, 'PlugAuth::Client::Tiny::Apache2AuthenHandler';
    push @skip, 'PlugAuth::Client::Tiny::Apache2AuthzHandler';
  }

  delete $args{requires}->{$_} for @skip;

  open my $fh, '>', 'testlist.txt';
  print $fh "$_\n" for grep !/^perl$/, sort keys %{ $args{requires} };
  close $fh;

  my $self = $class->SUPER::new(%args);

  $self->add_to_cleanup(
    'testlist.txt',
  );

  $self;
}

1;
