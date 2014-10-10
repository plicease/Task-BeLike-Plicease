package My::ModuleBuild;

use strict;
use warnings;
use base qw( Module::Build );

sub new
{
  my($class, %args) = @_;

  if($^O eq 'MSWin32')
  {
    my @skip = qw(
      WWW::Bugzilla::BugTree
      Archive::Libarchive::FFI
      Test::Vars
      WebService::LiveJournal
    );
      
    foreach my $mod (@skip)
    {
      delete $args{requires}->{$mod};
    }
  }
  else
  {
    delete $args{requires}->{'Alien::Libarchive::MSWin32'};
  }
  
  unless($^O eq 'cygwin')
  {
    delete $args{requires}->{'Alien::Packages::Cygwin'};
  }

  unless($^O eq 'MSWin32' || $^O eq 'cygwin')
  {
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
