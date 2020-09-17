# SPP_SLiM
 Code to run the simulations for the paper
 
 [Brauer CJ, and Beheregaray LB (2020) Recent and rapid anthropogenic habitat fragmentation increases extinction risk for freshwater biodiversity. *Evolutionary Applications* **xx**, xxx-xxx.](https://www.biorxiv.org/content/10.1101/2020.02.04.934729v1.abstract)
 
## To run the simulations:

Download bin/ to your working directory, then simply run:

```
./bin/run_sims.sh Ne reps

```

\
Replacing Ne with 100, 500 or 1000 depending on which of the three metapopulation sizes you want to run
and replacing reps with the number of replicate simulations you want to run (suggest 100)



\
This has been tested on MacOS. You will need to ensure R, perl and SLiM are installed
\
It should also work on most linux distros but you will need to change gcsplit to csplit in run_sims.sh 

