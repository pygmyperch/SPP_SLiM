## generate plots for each metapop


setwd("/path/to/sim_reps")

scenario_dirs <- list.dirs('.', full.names = T, recursive = F)

NE100_res <- lapply(scenario_dirs, function(d) {
  
  old_dir <- getwd()
  setwd(d)
  nm <- basename(d)
  npops <- as.numeric(gsub("[^0-9.-]", "", nm))

  directories <- list.dirs('.', full.names = T, recursive = F)
  files = list.files(pattern="allfst.txt", recursive=T, full.names=F)
  files <- files[which(file.info(files)$size>0)]
  gens_to_fst02 <- vector("list", 9)
  
  # make list of mean and sd for each dir
  res <- lapply(files, function(i) {
    dat <- read.table(i)[,7]
    plot_table <- c(mean(dat), sd(dat))
  })
  
  reps <- nrow(read.table(files[1]))
  tab <- as.data.frame(do.call(rbind, res[1:6]))
  CI <- as.data.frame(qnorm(0.975)*tab$V2/sqrt(reps))
  CI <- setNames(CI, "CI")
  tab <- as.data.frame(c(tab,CI))
  x <- 0:(length(tab$V1)-1)
  
  setwd(old_dir)
  
  pdf(file=paste0(nm,"_sim.pdf"), width=6, height=6)
  plot(x, tab$V1,
       ylim=range(c(tab$V1-tab$V2, tab$V1+tab$V2)),
       pch=19, xlab="Generation", ylab="Fst",xaxt="n")
  gens <- seq(0,length(tab$V1)*10,10)
  axis(side=1,at=x,labels=gens[1:(length(gens)-1)])
  arrows(x, tab$V1-tab$CI, x, tab$V1+tab$CI, length=0.05, angle=90, code=3)
  #poly2.mod <- lm(tab$V1~poly(x,2,raw=F))
  poly3.mod <- lm(tab$V1~poly(x,3,raw=F))
  lines(x, predict(poly3.mod, data.frame(x=x)), col="blue")
  xval <- spline(x = poly3.mod$fitted.values, y = x, xout = 0.2)$y
  points(xval, 0.2, col = "red", lwd = 3, pch = 8)
  mtext(bquote(Total~population~size == .(format("100", digits = 1))), adj=0.03, padj=1.5, outer = FALSE)
  mtext(bquote(Number~of~fragments == .(format(npops, digits = 1))), adj=0.03, padj=2.6, outer = FALSE)
  mtext(bquote(Generations~before~italic(F)[ST]~of~0.2 == .(format(xval*10, digits = 0))), adj=0.03, padj=3.75, outer = FALSE)
  dev.off()
  
  poly3.mod <- lm(tab$V1~poly(x,3,raw=F))
  xval <- spline(x = poly3.mod$fitted.values, y = x, xout = 0.2)$y
  gens_to_fst02[[nm]] <- as.data.frame(t(c(nm,format(xval*10, digits = 0))))

})
  
df = do.call(rbind, NE100_res)
colnames(df) <- c("Fragments", "Generations")
df <- df[order(as.numeric(as.character(df$Fragments))), ]
write.table(df, "Ne100_results.txt", quote = FALSE, row.names = FALSE)
