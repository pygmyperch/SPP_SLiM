# SPP_SLiM
 Code to run the eco-evolutionary simulations for the paper:
 
 [Brauer CJ, and Beheregaray LB (2020) Recent and rapid anthropogenic habitat fragmentation increases extinction risk for freshwater biodiversity. *Evolutionary Applications* **xx**, xxx-xxx.](https://www.biorxiv.org/content/10.1101/2020.02.04.934729v1.abstract)
 
## To run the simulations:

Download the repo [here](https://github.com/pygmyperch/SPP_SLiM/archive/master.zip)

\
There are six .R files in bin/<br />
For each one, you need to add the path to your working directory to the line:
```
setwd("/path/to/dir/")

```

\
Move bin/ to your working directory, then simply run:

```
./bin/run_sims.sh Ne reps

```

\
Replacing **Ne** with 100, 500 or 1000 depending on which of the three metapopulation sizes you want to run,<br />
and replacing **reps** with the number of replicate simulations you want to run (suggest 100)<br />
**Note.** The code will only work for Ne of 100, 500 or 1000.



\
The code is ugly :dizzy_face: but it works (tested on MacOS). You will need to ensure R, perl and SLiM are installed.
\
I think it should also work on most linux distros but you will need to change gcsplit to csplit in bin/run_sims.sh 

