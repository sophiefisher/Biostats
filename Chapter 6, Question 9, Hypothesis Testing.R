quartz.options(width=5, height=5)

matrix <- as.matrix(read.csv(file="Matrix.csv",header=FALSE))

matrix[2,3]

matrixv <- matrix(matrix,1,112*112)
matrixv <- matrixv[which(matrixv!=matrix[2,3])]
hist(matrixv,seq(min(matrixv),max(matrixv),length.out=101),xlab="Strength of all Regions Pairs Except (M2,M3)",main=NULL,xlim=c(0,1),ylim=c(0,600))

pval <- length(which(matrixv>matrix[2,3])) / length(matrixv)
pval