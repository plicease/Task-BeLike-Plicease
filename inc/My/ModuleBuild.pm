package My::ModuleBuild;

use strict;
use warnings;
use base qw( Module::Build );

sub new
{
  my($class, %args) = @_;
  
  if($^O eq 'MSWin32')
  {
    $args{requires}->{'Alien::Libarchive::MSWin32'} = 0.04;
    $args{requires}->{'Alien::o2dll'}               = 0.02;
    foreach my $mod (qw( App::cpangitify WWW::Bugzilla::BugTree Archive::Libarchive::FFI ))
    {
      delete $args{requires}->{$mod};
    }
  }
  
  if($^O eq 'cygwin')
  {
    $args{requires}->{'Alien::Packages::Cygwin'} = 0.02;
    $args{requires}->{'Alien::o2dll'}            = 0.02;
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
