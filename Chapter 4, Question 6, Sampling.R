quartz.options(width=10, height=3)

matrix <- as.matrix(read.csv(file="Matrix.csv",header=FALSE))


#both do same thing
#layout(matrix(c(1,2,3),1,3))
par(mfrow=c(1,3))

matrixv <- matrix(matrix,1,112*112)

hist(matrixv,seq(min(matrixv),max(matrixv),length.out=101),xlab="Strength",main=NULL,xlim=c(0,1),ylim=c(0,600))

matrixvrand = matrixv[sample(112*112)[1:100]]
hist(matrixvrand,seq(min(matrixvrand),max(matrixvrand),length.out=11),xlab="Strength",main=NULL,xlim=c(0,1),ylim=c(0,40))

matrixvrand = matrixv[sample(112*112)[1:100]]
hist(matrixvrand,seq(min(matrixvrand),max(matrixvrand),length.out=11),xlab="Strength",main=NULL,xlim=c(0,1),ylim=c(0,40))
