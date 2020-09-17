#!/usr/bin/perl
use strict;
use warnings;
use File::Find::Rule qw( );
use File::Basename;

my $pop1 = $ARGV[0];
my $pop2 = $ARGV[1];
my $pop3 = $ARGV[2];
my $pop4 = $ARGV[3];
my $pop5 = $ARGV[4];
my $pop6 = $ARGV[5];

my @files;

{
@files = File::Find::Rule->file()->name("*.vcf")->in("."); 
foreach my $file (@files){
    #print basename($file), "\n";
    my @cmd = ("vcftools", "--vcf", $file, "--weir-fst-pop", $pop1, "--weir-fst-pop", $pop2, "--weir-fst-pop", $pop3, "--weir-fst-pop", $pop4, "--weir-fst-pop", $pop5, "--weir-fst-pop", $pop6, "--out", $file);
		system(@cmd);

	}
}
