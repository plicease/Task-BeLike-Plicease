use strict;
use warnings;
BEGIN { eval q{ use EV; } }
BEGIN { eval q{ use Role::Tiny; } }
BEGIN { eval q{ use IPC::Run3; } }
use Test::More;

my @list;

if(-r "testlist.txt")
{
  open my $fh, '<', "testlist.txt";
  @list = <$fh>;
  chomp @list;
  close $fh;
}

push @list, 'Task::BeLike::Plicease';

plan tests => scalar @list;

require_ok $_ for @list;
