package mymm;

use strict;
use warnings;
use Config;
use ExtUtils::MakeMaker ();

sub wasm_ok
{
  return 0 if $ENV{TASK_BELIKE_PLICEASE_NOWASM};
  if($^O eq 'linux')
  {
    return $Config{archname} =~ /^(x86_64|aarch64)-linux/ && $Config{ptrsize} == 8;
  }
  elsif($^O eq 'MSWin32')
  {
    return $Config{archname} =~ /^MSWin32-x64/ && $Config{ptrsize} == 8;
  }
  elsif($^O eq 'darwin')
  {
    return $Config{myarchname} =~ /^i386-darwin/ && $Config{ptrsize} == 8;
  }
  else
  {
    return 0;
  }
}

sub myWriteMakefile
{
  my %args = @_;

  my @skip;

  # Wasm
  unless(wasm_ok())
  {
    push @skip, qw(
      Alien::wasmtime
      App::plasm
      Wasm
      Wasm::Hook
    );
  }

  # any BSD (Free, Net, Open etc)
  if($^O =~ /bsd$/)
  {
    push @skip, qw(
      Win32::Vcpkg
    );
  }

  # Linux PPC64
  if($^O eq 'linux' && $Config{archname} =~ /^ppc64/)
  {
    push @skip, qw(
      FFI::TinyCC
      FFI::TinyCC::Inline
    );
  }

  # Linux x86_64 only
  if($^O eq 'linux' && $Config{archname} !~ /^x86_64-linux/)
  {
    push @skip, qw(
      Win32::Vcpkg
    );
  }

  # Linux Arm64
  if($^O eq 'linux' && $Config{archname} =~ /^aarch64-/)
  {
    push @skip, qw(
      FFI::TinyCC
      FFI::TinyCC::Inline
      Win32::Vcpkg
    );
  }

  if($^O ne 'linux')
  {
    push @skip, qw(
      Alien::libnewrelic
      NewFangle
    );
  }

  if($^O eq 'MSWin32')
  {
    # Microsoft Visual C++
    if($Config{ccname} eq 'cl')
    {
      push @skip, qw(
        Acme::Alien::DontPanic
        Acme::Alien::DontPanic2
        Acme::Ford::Prefect
        Acme::Ford::Prefect2
        Acme::Ford::Prefect::FFI
        Acme::Ford::Prefect2::FFI

        Alien::Autotools
        Alien::autoconf
        Alien::automake
        Alien::libtool
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
        Alien::help2man;

        FFI::Platypus::Lang::CPP::Demangle::XS

        Archive::Tar::Wrapper

        Alien::Build::Plugin::Fetch::Cache
        Alien::Role::Dino
        Dist::Zilla::Plugin::JavaScript::Minifier

        FFI::TinyCC
        Pod::POM::Web
        FFI::TinyCC::Inline
        Text::Hunspell
        PkgConfig
      );
    }
    # Usually Strawberry Perl
    else
    {
      push @skip, qw(
        Alien::Librdkafka
        Kafka::Librd
      );
    }

    push @skip, qw(
      WWW::Bugzilla::BugTree
      Term::Clui
      Archive::Libarchive::FFI
      WebService::LiveJournal
      Term::EditLine
      Alien::Editline
      Alien::flex

      App::cpangitify
      FFI::ExtractSymbols
      FFI::Platypus::Lang::Fortran
      FFI::Platypus::Lang::CPP
      FFI::Platypus::Lang::Pascal
      File::LibMagic::FFI

      Archive::Libarchive::Any
      Archive::Libarchive::XS
      Archive::Libarchive::FFI
      Archive::Ar::Libarchive
      Alien::pkgconf
      Alien::Alien
      Alien::Libarchive3
      Alien::bison
      PkgConfig::LibPkgConf
      App::Prove::Plugin::TermTable
      App::Prove::Plugin::TermTableStty
    );

    if($] >= 5.024)
    {
      push @skip, 'Mojolicious::Plugin::Ident';
    }
  }
  # Not windows
  else
  {
    push @skip, qw(
      Win32::ErrorMode
      Win32API::ProcessStatus
    );
  }

  if($^O eq 'darwin')
  {
    push @skip, qw(
      FFI::TinyCC
      FFI::TinyCC::Inline
    );
  }

  unless($] >= 5.008009)
  {
    push @skip,
      'Dist::Zilla::Plugin::jQuery', # due to Bread::Board
      'FFI::TinyCC',                 # in practice does not work on 5.8.8
      'File::Listing::Ftpcopy',      # in practice does not work on 5.8.8
      'Sereal::Encoder',             # https://github.com/Sereal/Sereal/issues/95
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
      'Dist::Zilla::PluginBundle::ACPS',
      'Mojolicious',
      'Mojolicious::Plugin::Ident',
      'Mojolicious::Plugin::TtRenderer',
      'PlugAuth',
      'PlugAuth::Plugin::DBIAuth',
      'PlugAuth::Plugin::LDAP',
      'PlugAuth::Plugin::AuthenSimple',
      'PlugAuth::Plugin::Finger',
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

  unless($] >= 5.034000)
  {
    push @skip,
      'Plack::App::Libarchive',
      'App::tarweb';
  }

  print "Note: skipping on this platform:\n";
  print " + $_\n" for @skip;
  delete $args{PREREQ_PM}->{$_} for @skip;

  open my $fh, '>', 'testlist.txt';
  print $fh "$_\n" for grep !/^perl$/, sort keys %{ $args{PREREQ_PM} };
  close $fh;

  $args{clean} = { FILES => "testlist.txt" };
  ExtUtils::MakeMaker::WriteMakefile(%args);
}

1;
