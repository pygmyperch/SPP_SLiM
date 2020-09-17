# create ind files for SLiM sims


# set wd to your analysis directory (must contain the directory with the scripts: bin/)
setwd("/path/to/dir/")
getwd()
# create output dirs
sapply(c(2:10), function(x) dir.create(paste0("./Ne500/",x,"pop_inds")))

setwd("./Ne500/2pop_inds")
prefix <- "i"
sub <- floor(40/2)
pop1 <- seq(from=0, to=sub-1)
pop2 <- seq(from=pop1[sub]+1, to=pop1[sub]+sub)

pop1 <- as.data.frame(paste(prefix,pop1, sep = ""))
pop2 <- as.data.frame(paste(prefix,pop2, sep = ""))


write.table(pop1,"pop1.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop2,"pop2.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)


setwd("../3pop_inds")
prefix <- "i"
sub <- floor(60/3)
pop1 <- seq(from=0, to=sub-1)
pop2 <- seq(from=pop1[sub]+1, to=pop1[sub]+sub)
pop3 <- seq(from=pop2[sub]+1, to=pop2[sub]+sub)

pop1 <- as.data.frame(paste(prefix,pop1, sep = ""))
pop2 <- as.data.frame(paste(prefix,pop2, sep = ""))
pop3 <- as.data.frame(paste(prefix,pop3, sep = ""))


write.table(pop1,"pop1.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop2,"pop2.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop3,"pop3.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)


setwd("../4pop_inds")
prefix <- "i"
sub <- floor(80/4)
pop1 <- seq(from=0, to=sub-1)
pop2 <- seq(from=pop1[sub]+1, to=pop1[sub]+sub)
pop3 <- seq(from=pop2[sub]+1, to=pop2[sub]+sub)
pop4 <- seq(from=pop3[sub]+1, to=pop3[sub]+sub)

pop1 <- as.data.frame(paste(prefix,pop1, sep = ""))
pop2 <- as.data.frame(paste(prefix,pop2, sep = ""))
pop3 <- as.data.frame(paste(prefix,pop3, sep = ""))
pop4 <- as.data.frame(paste(prefix,pop4, sep = ""))


write.table(pop1,"pop1.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop2,"pop2.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop3,"pop3.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop4,"pop4.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)


setwd("../5pop_inds")
prefix <- "i"
sub <- floor(100/5)
pop1 <- seq(from=0, to=sub-1)
pop2 <- seq(from=pop1[sub]+1, to=pop1[sub]+sub)
pop3 <- seq(from=pop2[sub]+1, to=pop2[sub]+sub)
pop4 <- seq(from=pop3[sub]+1, to=pop3[sub]+sub)
pop5 <- seq(from=pop4[sub]+1, to=pop4[sub]+sub)

pop1 <- as.data.frame(paste(prefix,pop1, sep = ""))
pop2 <- as.data.frame(paste(prefix,pop2, sep = ""))
pop3 <- as.data.frame(paste(prefix,pop3, sep = ""))
pop4 <- as.data.frame(paste(prefix,pop4, sep = ""))
pop5 <- as.data.frame(paste(prefix,pop5, sep = ""))


write.table(pop1,"pop1.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop2,"pop2.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop3,"pop3.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop4,"pop4.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop5,"pop5.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)




setwd("../6pop_inds")
prefix <- "i"
sub <- floor(100/6)
pop1 <- seq(from=0, to=sub-1)
pop2 <- seq(from=pop1[sub]+1, to=pop1[sub]+sub)
pop3 <- seq(from=pop2[sub]+1, to=pop2[sub]+sub)
pop4 <- seq(from=pop3[sub]+1, to=pop3[sub]+sub)
pop5 <- seq(from=pop4[sub]+1, to=pop4[sub]+sub)
pop6 <- seq(from=pop5[sub]+1, to=pop5[sub]+sub)

pop1 <- as.data.frame(paste(prefix,pop1, sep = ""))
pop2 <- as.data.frame(paste(prefix,pop2, sep = ""))
pop3 <- as.data.frame(paste(prefix,pop3, sep = ""))
pop4 <- as.data.frame(paste(prefix,pop4, sep = ""))
pop5 <- as.data.frame(paste(prefix,pop5, sep = ""))
pop6 <- as.data.frame(paste(prefix,pop6, sep = ""))


write.table(pop1,"pop1.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop2,"pop2.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop3,"pop3.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop4,"pop4.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop5,"pop5.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop6,"pop6.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)



setwd("../7pop_inds")
prefix <- "i"
sub <- floor(100/7)
pop1 <- seq(from=0, to=sub-1)
pop2 <- seq(from=pop1[sub]+1, to=pop1[sub]+sub)
pop3 <- seq(from=pop2[sub]+1, to=pop2[sub]+sub)
pop4 <- seq(from=pop3[sub]+1, to=pop3[sub]+sub)
pop5 <- seq(from=pop4[sub]+1, to=pop4[sub]+sub)
pop6 <- seq(from=pop5[sub]+1, to=pop5[sub]+sub)
pop7 <- seq(from=pop6[sub]+1, to=pop6[sub]+sub)


pop1 <- as.data.frame(paste(prefix,pop1, sep = ""))
pop2 <- as.data.frame(paste(prefix,pop2, sep = ""))
pop3 <- as.data.frame(paste(prefix,pop3, sep = ""))
pop4 <- as.data.frame(paste(prefix,pop4, sep = ""))
pop5 <- as.data.frame(paste(prefix,pop5, sep = ""))
pop6 <- as.data.frame(paste(prefix,pop6, sep = ""))
pop7 <- as.data.frame(paste(prefix,pop7, sep = ""))


write.table(pop1,"pop1.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop2,"pop2.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop3,"pop3.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop4,"pop4.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop5,"pop5.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop6,"pop6.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop7,"pop7.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)

setwd("../8pop_inds")
prefix <- "i"
sub <- floor(100/8)
pop1 <- seq(from=0, to=sub-1)
pop2 <- seq(from=pop1[sub]+1, to=pop1[sub]+sub)
pop3 <- seq(from=pop2[sub]+1, to=pop2[sub]+sub)
pop4 <- seq(from=pop3[sub]+1, to=pop3[sub]+sub)
pop5 <- seq(from=pop4[sub]+1, to=pop4[sub]+sub)
pop6 <- seq(from=pop5[sub]+1, to=pop5[sub]+sub)
pop7 <- seq(from=pop6[sub]+1, to=pop6[sub]+sub)
pop8 <- seq(from=pop7[sub]+1, to=pop7[sub]+sub)

pop1 <- as.data.frame(paste(prefix,pop1, sep = ""))
pop2 <- as.data.frame(paste(prefix,pop2, sep = ""))
pop3 <- as.data.frame(paste(prefix,pop3, sep = ""))
pop4 <- as.data.frame(paste(prefix,pop4, sep = ""))
pop5 <- as.data.frame(paste(prefix,pop5, sep = ""))
pop6 <- as.data.frame(paste(prefix,pop6, sep = ""))
pop7 <- as.data.frame(paste(prefix,pop7, sep = ""))
pop8 <- as.data.frame(paste(prefix,pop8, sep = ""))


write.table(pop1,"pop1.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop2,"pop2.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop3,"pop3.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop4,"pop4.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop5,"pop5.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop6,"pop6.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop7,"pop7.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop8,"pop8.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)



setwd("../9pop_inds")
prefix <- "i"
sub <- floor(100/9)
pop1 <- seq(from=0, to=sub-1)
pop2 <- seq(from=pop1[sub]+1, to=pop1[sub]+sub)
pop3 <- seq(from=pop2[sub]+1, to=pop2[sub]+sub)
pop4 <- seq(from=pop3[sub]+1, to=pop3[sub]+sub)
pop5 <- seq(from=pop4[sub]+1, to=pop4[sub]+sub)
pop6 <- seq(from=pop5[sub]+1, to=pop5[sub]+sub)
pop7 <- seq(from=pop6[sub]+1, to=pop6[sub]+sub)
pop8 <- seq(from=pop7[sub]+1, to=pop7[sub]+sub)
pop9 <- seq(from=pop8[sub]+1, to=pop8[sub]+sub)

pop1 <- as.data.frame(paste(prefix,pop1, sep = ""))
pop2 <- as.data.frame(paste(prefix,pop2, sep = ""))
pop3 <- as.data.frame(paste(prefix,pop3, sep = ""))
pop4 <- as.data.frame(paste(prefix,pop4, sep = ""))
pop5 <- as.data.frame(paste(prefix,pop5, sep = ""))
pop6 <- as.data.frame(paste(prefix,pop6, sep = ""))
pop7 <- as.data.frame(paste(prefix,pop7, sep = ""))
pop8 <- as.data.frame(paste(prefix,pop8, sep = ""))
pop9 <- as.data.frame(paste(prefix,pop9, sep = ""))


write.table(pop1,"pop1.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop2,"pop2.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop3,"pop3.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop4,"pop4.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop5,"pop5.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop6,"pop6.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop7,"pop7.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop8,"pop8.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop9,"pop9.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)


setwd("../10pop_inds")
prefix <- "i"
sub <- floor(100/10)
pop1 <- seq(from=0, to=sub-1)
pop2 <- seq(from=pop1[sub]+1, to=pop1[sub]+sub)
pop3 <- seq(from=pop2[sub]+1, to=pop2[sub]+sub)
pop4 <- seq(from=pop3[sub]+1, to=pop3[sub]+sub)
pop5 <- seq(from=pop4[sub]+1, to=pop4[sub]+sub)
pop6 <- seq(from=pop5[sub]+1, to=pop5[sub]+sub)
pop7 <- seq(from=pop6[sub]+1, to=pop6[sub]+sub)
pop8 <- seq(from=pop7[sub]+1, to=pop7[sub]+sub)
pop9 <- seq(from=pop8[sub]+1, to=pop8[sub]+sub)
pop10 <- seq(from=pop9[sub]+1, to=pop9[sub]+sub)

pop1 <- as.data.frame(paste(prefix,pop1, sep = ""))
pop2 <- as.data.frame(paste(prefix,pop2, sep = ""))
pop3 <- as.data.frame(paste(prefix,pop3, sep = ""))
pop4 <- as.data.frame(paste(prefix,pop4, sep = ""))
pop5 <- as.data.frame(paste(prefix,pop5, sep = ""))
pop6 <- as.data.frame(paste(prefix,pop6, sep = ""))
pop7 <- as.data.frame(paste(prefix,pop7, sep = ""))
pop8 <- as.data.frame(paste(prefix,pop8, sep = ""))
pop9 <- as.data.frame(paste(prefix,pop9, sep = ""))
pop10 <- as.data.frame(paste(prefix,pop10, sep = ""))


write.table(pop1,"pop1.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop2,"pop2.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop3,"pop3.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop4,"pop4.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop5,"pop5.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop6,"pop6.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop7,"pop7.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop8,"pop8.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop9,"pop9.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)
write.table(pop10,"pop10.txt", quote = FALSE, col.names = FALSE, row.names = FALSE)





