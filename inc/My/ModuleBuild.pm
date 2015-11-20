package My::ModuleBuild;

use strict;
use warnings;
use Config;
use base qw( Module::Build );

sub new
{
  my($class, %args) = @_;

  my @skip;

  if($^O eq 'MSWin32')
  {
    push @skip, qw(
      WWW::Bugzilla::BugTree
      Archive::Libarchive::FFI
      Test::Vars
      WebService::LiveJournal
      Term::EditLine2
      Alien::Editline
      FFI
      Alien::flex
      Alien::Hunspell
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
  }
  else
  {
    push @skip, 'Alien::Libarchive::MSWin32';
  }

  if($^O eq 'cygwin')
  {
    push @skip, 'FFI::TinyCC';
    push @skip, 'FFI' if $Config{ptrsize} == 8;
  }
  else  
  {
    push @skip, 'Alien::Packages::Cygwin';
  }

  if($^O =~ /^(MSWin32|cygwin)$/)
  {
    push @skip, qw(
      Alien::Editline
      Term::EditLine2
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
      FFI
    );
  }

  if($^O eq 'linux')
  {
    # nothing special
  }
  else
  {
    push @skip, qw( UUID::FFI );
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
  
  if($] >= 5.022000)
  {
    # until mod_perl supports Perl 5.22
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
