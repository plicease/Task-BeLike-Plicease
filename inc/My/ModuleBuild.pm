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
  
  unless($^O eq 'cygwin')
  {
    push @skip, 'Alien::Packages::Cygwin';
  }

  unless($^O eq 'MSWin32' || $^O eq 'cygwin')
  {
    push @skip, 'Alien::o2dll';
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
