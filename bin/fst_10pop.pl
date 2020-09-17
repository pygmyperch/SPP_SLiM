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
my $pop7 = $ARGV[6];
my $pop8 = $ARGV[7];
my $pop9 = $ARGV[8];
my $pop10 = $ARGV[9];
my @files;

{
@files = File::Find::Rule->file()->name("*.vcf")->in("."); 
foreach my $file (@files){
    #print basename($file), "\n";
    my @cmd = ("vcftools", "--vcf", $file, "--weir-fst-pop", $pop1, "--weir-fst-pop", $pop2, "--weir-fst-pop", $pop3, "--weir-fst-pop", $pop4, "--weir-fst-pop", $pop5, "--weir-fst-pop", $pop6, "--weir-fst-pop", $pop7, "--weir-fst-pop", $pop8, "--weir-fst-pop", $pop9, "--weir-fst-pop", $pop10, "--out", $file);
		system(@cmd);

	}
}
