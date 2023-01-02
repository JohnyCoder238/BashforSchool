use strict;
use warnings;

my @energies = ();
my $should_write = 'false';
my $file = 'vasprun.xml';
open(FH, $file) or die("File $file not found");
      
while(my $String = <FH>)
{
	if($String =~ /<set comment="kpoint 9([6-8][0-9]|90)">/)
	{
		$should_write = 'true';
	}
	if($should_write eq 'true')
	{
		if($String =~ /-[0-9]+\.[0-9]+/ or $String =~ /kpoint/)
		{
			push(@energies, $String);
			print $String;
		}
	}
	if($String =~ /<\/set>/)
	{
		$should_write = 'false';
	}
}
close(FH);
