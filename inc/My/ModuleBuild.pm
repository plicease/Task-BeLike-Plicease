package My::ModuleBuild;

use strict;
use warnings;
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
    );
  }
  else
  {
    push @skip, 'Alien::Libarchive::MSWin32';
  }

  if($^O eq 'cygwin')
  {
    push @skip, qw(
      FFI::TinyCC
    );
  }
  else  
  {
    push @skip, qw(
      Alien::Packages::Cygwin
    );
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
    );
  }

  if($^O eq 'darwin')
  {
    push @skip, qw(
      WWW::Bugzilla::BugTree
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

  unless($] >= 5.020000)
  {
    push @skip, 'Photography::EV';
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
