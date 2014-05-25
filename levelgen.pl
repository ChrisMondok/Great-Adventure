#!/usr/bin/perl

#use strict;

my $intro = $ARGV[0];
my $beat = $ARGV[1];
my $length = $ARGV[2];

$beat && $length or die("Proper usage: perl levelgen.pl intro beat length (in ms)");
open(LEVEL,'>:raw', 'level1');

for($x = 0; $x<$length; $x++){
	if($x < $intro){
		print LEVEL pack('s',0);
	} else {
		print LEVEL pack('s',($x-$intro)/$beat);
	}
}

close(LEVEL);
