quartz.options(width=10, height=3)

matrix <- as.matrix(read.csv(file="Matrix.csv",header=FALSE))
matrixv <- matrix(matrix,1,112*112)

#both do same thing
#layout(matrix(c(1,2,3),1,3))
par(mfrow=c(1,3))

hist(matrixv,breaks=seq(min(matrixv),max(matrixv),length.out=11),xlab="Communication Strength",main=NULL,xlim=c(0,1),ylim=c(0,6000),col="light blue")

hist(matrixv,breaks=seq(min(matrixv),max(matrixv),length.out=101),xlab="Communication Strength",main=NULL,xlim=c(0,1),ylim=c(0,600),col="purple")

hist(matrixv,breaks=seq(min(matrixv),max(matrixv),length.out=2001),xlab="Communication Strength",main=NULL,xlim=c(0,1),ylim = c(0,60))
