#!/usr/bin/perl
use strict;
use warnings;
use File::Find::Rule qw( );
use File::Basename;

my $pop1 = $ARGV[0];
my $pop2 = $ARGV[1];
my @files;

{
@files = File::Find::Rule->file()->name("*.vcf")->in("."); 
foreach my $file (@files){
    #print basename($file), "\n";
    my @cmd = ("vcftools", "--vcf", $file, "--weir-fst-pop", $pop1, "--weir-fst-pop", $pop2, "--out", $file);
		system(@cmd);

	}
}
