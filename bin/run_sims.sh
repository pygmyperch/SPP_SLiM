#!/bin/bash



metapop=$1
reps=$2
BASE=$(pwd)


### 1. Run the SLiM simulations ###

# make dirs for sim results
mkdir -p "$BASE/Ne$1/"
for n in {2..10}; do mkdir -p "$BASE/Ne$1/$n/"; done
mkdir -p "$BASE/Ne$1/sim_reps/"




# run the sims
for n in {2..10}; do ( cd "$BASE/Ne$1/$n" && for ((i=1; i<=reps; i=i+1));  do slim -d "iter='{}'" -d nsub=$n -d ne=$metapop -d "path='$BASE/Ne$1/$n/'" $BASE/bin/sims/$n.slim; done); done




# mv sim results to sim_reps/
for d in {2..10}; do mv "$BASE/Ne$1/$d/" "$BASE/Ne$1/sim_reps/"; done





### 2. prepare the files for analyses ###

# generate files defining the individuals in each population for the vcftools Fst calculations
R < $BASE/bin/makeindfiles_Ne$1.R --no-save



# fix the whitespace padding that SLiM adds to file names (not sure why it happens...)
# make dirs for each sampled generation
# split the appended vcf files into one for each replicate (note. gcsplit works for mac, if using linux change gcsplit to csplit)
#cd "$BASE/Ne$1/sim_reps/"

for d in {2..10}; do ( cd "$BASE/Ne$1/sim_reps/$d/" && for file in * .vcf; do mv "$file" "${file// /}"; done); done

for d in {2..10}; do ( cd "$BASE/Ne$1/sim_reps/$d/" && for file in *.vcf; do mkdir -p -- "${file%%.*}" && mv -- "$file" "${file%%.*}"; done); done

for d in {2..10}; do ( cd "$BASE/Ne$1/sim_reps/$d/" && for file in $( find . -type f -name '*vcf' ); do gcsplit -k "$file" -f "$file" --suffix="_%02d.vcf" -z /##fileformat=VCFv4.2/ {*}; rm "$file"; done); done

for d in {2..10}; do ( cd "$BASE/Ne$1/sim_reps/$d/" && for file in $( find . -type f -name '*vcf' ); do mv "$file" "${file/.vcf_/_}"; done); done




### 3. calculate Fst and prepare files for plotting ###


cd "$BASE/Ne$1/sim_reps/2/"
$BASE/bin/fst_2pop.pl $BASE/Ne$1/2pop_inds/pop1.txt $BASE/Ne$1/2pop_inds/pop2.txt
$BASE/bin/extract_fst.pl

cd "$BASE/Ne$1/sim_reps/3/"
$BASE/bin/fst_3pop.pl $BASE/Ne$1/3pop_inds/pop1.txt $BASE/Ne$1/3pop_inds/pop2.txt $BASE/Ne$1/3pop_inds/pop3.txt
$BASE/bin/extract_fst.pl

cd "$BASE/Ne$1/sim_reps/4/"
$BASE/bin/fst_4pop.pl $BASE/Ne$1/4pop_inds/pop1.txt $BASE/Ne$1/4pop_inds/pop2.txt $BASE/Ne$1/4pop_inds/pop3.txt $BASE/Ne$1/4pop_inds/pop4.txt
$BASE/bin/extract_fst.pl

cd "$BASE/Ne$1/sim_reps/5/"
$BASE/bin/fst_5pop.pl $BASE/Ne$1/5pop_inds/pop1.txt $BASE/Ne$1/5pop_inds/pop2.txt $BASE/Ne$1/5pop_inds/pop3.txt $BASE/Ne$1/5pop_inds/pop4.txt $BASE/Ne$1/5pop_inds/pop5.txt
$BASE/bin/extract_fst.pl

cd "$BASE/Ne$1/sim_reps/6/"
$BASE/bin/fst_6pop.pl $BASE/Ne$1/6pop_inds/pop1.txt $BASE/Ne$1/6pop_inds/pop2.txt $BASE/Ne$1/6pop_inds/pop3.txt $BASE/Ne$1/6pop_inds/pop4.txt $BASE/Ne$1/6pop_inds/pop5.txt $BASE/Ne$1/6pop_inds/pop6.txt
$BASE/bin/extract_fst.pl

cd "$BASE/Ne$1/sim_reps/7/"
$BASE/bin/fst_7pop.pl $BASE/Ne$1/7pop_inds/pop1.txt $BASE/Ne$1/7pop_inds/pop2.txt $BASE/Ne$1/7pop_inds/pop3.txt $BASE/Ne$1/7pop_inds/pop4.txt $BASE/Ne$1/7pop_inds/pop5.txt $BASE/Ne$1/7pop_inds/pop6.txt $BASE/Ne$1/7pop_inds/pop7.txt
$BASE/bin/extract_fst.pl

cd "$BASE/Ne$1/sim_reps/8/"
$BASE/bin/fst_8pop.pl $BASE/Ne$1/8pop_inds/pop1.txt $BASE/Ne$1/8pop_inds/pop2.txt $BASE/Ne$1/8pop_inds/pop3.txt $BASE/Ne$1/8pop_inds/pop4.txt $BASE/Ne$1/8pop_inds/pop5.txt $BASE/Ne$1/8pop_inds/pop6.txt $BASE/Ne$1/8pop_inds/pop7.txt $BASE/Ne$1/8pop_inds/pop8.txt
$BASE/bin/extract_fst.pl

cd "$BASE/Ne$1/sim_reps/9/"
$BASE/bin/fst_9pop.pl $BASE/Ne$1/9pop_inds/pop1.txt $BASE/Ne$1/9pop_inds/pop2.txt $BASE/Ne$1/9pop_inds/pop3.txt $BASE/Ne$1/9pop_inds/pop4.txt $BASE/Ne$1/9pop_inds/pop5.txt $BASE/Ne$1/9pop_inds/pop6.txt $BASE/Ne$1/9pop_inds/pop7.txt $BASE/Ne$1/9pop_inds/pop8.txt $BASE/Ne$1/9pop_inds/pop9.txt
$BASE/bin/extract_fst.pl

cd "$BASE/Ne$1/sim_reps/10/"
$BASE/bin/fst_10pop.pl $BASE/Ne$1/10pop_inds/pop1.txt $BASE/Ne$1/10pop_inds/pop2.txt $BASE/Ne$1/10pop_inds/pop3.txt $BASE/Ne$1/10pop_inds/pop4.txt $BASE/Ne$1/10pop_inds/pop5.txt $BASE/Ne$1/10pop_inds/pop6.txt $BASE/Ne$1/10pop_inds/pop7.txt $BASE/Ne$1/10pop_inds/pop8.txt $BASE/Ne$1/10pop_inds/pop9.txt $BASE/Ne$1/10pop_inds/pop10.txt
$BASE/bin/extract_fst.pl




### 4. plot results ###

R < $BASE/bin/plot_metapop_sims_Ne$1.R --no-save














