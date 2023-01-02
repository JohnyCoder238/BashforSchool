use strict;
use warnings;

our $file = 'vasprun.xml';
open(FH, $file) or die("File $file not found");

my $float = 'float.txt';
my $integer = 'integer.txt';

my @floats = ();
my @integers = ();

while(my $String = <FH>)
{
    if($String =~ /<v.*>((\s|\t)+[0-9]\.?[0-9]*)+\s+</)
    {
	#print $String;
        my @str = split(' ',$String); 
	foreach(@str)
	{
		if($_ =~ /[0-9]+/)
		{
			if($_ =~ /\./)
			{
			push @floats, $_;
			}
			else
	                {
	                push @integers, $_;    
	                }
		}

	}
    }
}
close(FH);
open(FILE, '>', $float) or die $!;
foreach(@floats)
{
	print FILE "$_\n";
}
close(FILE);            
open(FILE, '>', $integer) or die $!;
foreach(@integers)
{
	print FILE "$_\n";
}
close(FILE);
