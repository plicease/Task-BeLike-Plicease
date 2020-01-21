use strict;
use warnings;
use v5.10;
use File::Spec;
use Config::INI::Reader;

open my $fh, '<', File::Spec->catfile( qw( lib Task BeLike Plicease.pm ));
my @lines = <$fh>;
chomp @lines;
close $fh;

my $config = Config::INI::Reader->read_file('dist.ini');
my @modules = sort{ lc $a cmp lc $b } keys %{ $config->{Prereqs} };

open $fh, '>', File::Spec->catfile( qw( lib Task BeLike Plicease.pm ));
# this gives us UNIX line endings in Windows
# and is a no-op on UNIX
binmode $fh;

while(defined $lines[0])
{
  $_ = shift @lines;
  say $fh $_;
  last if /^=over 4\s*$/
}

while(defined $lines[0])
{
  $_ = shift @lines;
  last if /^=back\s*$/;
}

foreach my $module (@modules)
{
  say $fh "";
  say $fh "=item *";
  say $fh "";
  say $fh "$module";
}

say $fh "";
say $fh "=back";

while(defined $lines[0])
{
  $_ = shift @lines;
  say $fh $_;
}

close $fh;

exit 0;
