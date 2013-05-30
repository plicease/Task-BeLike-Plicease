package inc::MakeMaker;

use Moose;
use namespace::autoclean;
use v5.10;

with 'Dist::Zilla::Role::InstallTool';

sub setup_installer
{
  my($self) = @_;
  
  my($makefile) = grep { $_->name eq 'Makefile.PL' } @{ $self->zilla->files };
  
  my $content = $makefile->content;
  
  if($content =~ s{\t}{ }gm)
  {
    $makefile->content($content);
    $self->zilla->log("Modified Makefile.PL remove tabs");
  }
  else
  {
    $self->zilla->log_fatal("unable to update Makefile.PL");
  }
}

1;

