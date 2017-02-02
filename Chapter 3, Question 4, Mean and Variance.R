quartz.options(width=10, height=3)

matrix <- as.matrix(read.csv(file="Matrix.csv",header=FALSE))

#both do same thing
#layout(matrix(c(1,2,3),1,3))
par(mfrow=c(1,3))

hist(colMeans(matrix),seq(min(colMeans(matrix)),max(colMeans(matrix)),length.out=11),xlab="Mean Strength",main=NULL,xlim=c(.2,.4),ylim=c(0,20))

hist(apply(matrix,2,var),seq(min(apply(matrix,2,var)),max(apply(matrix,2,var)),length.out=11),xlab="Variance of Strength",main=NULL,xlim=c(0,.03),ylim=c(0,40))

hist(colMeans(matrix)/apply(matrix,2,var),seq(min(colMeans(matrix)/apply(matrix,2,var)),max(colMeans(matrix)/apply(matrix,2,var)),length.out=11),xlab="Coefficient of Variation of Strength",main=NULL,xlim=c(0,100),ylim=c(0,20))