package My::ModuleBuild;

use strict;
use warnings;
use base qw( Module::Build );

sub new
{
  my($class, %args) = @_;

  if($^O eq 'MSWin32')
  {
    foreach my $mod (qw( App::cpangitify WWW::Bugzilla::BugTree Archive::Libarchive::FFI Test::Vars WebService::LibeJournal ))
    {
      delete $args{requires}->{$mod};
    }
  }
  else
  {
    delete $args{requires}->{'Alien::Libarchive::MSWin32'};
    delete $args{requires}->{'Alien::o2dll'};
  }
  
  unless($^O eq 'cygwin')
  {
    delete $args{requires}->{'Alien::Packages::Cygwin'};
    delete $args{requires}->{'Alien::o2dll'};
  }

  unless($] >= 5.020000)
  {
    delete $args{requires}->{'Photography::EV'};
  }

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
