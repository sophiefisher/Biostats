quartz.options(width=10.5, height=5.5)

matrix <- as.matrix(read.csv(file="Matrix.csv",header=FALSE))

par(mfrow=c(1,4))

#requires Hmisc library
library("Hmisc")

nregs <- 112
plot(rep(1,112),matrix[,1],xlim = c(0,2),ylim=c(0,.8),xlab="Data",ylab="Strength")

errbar(1,mean(matrix[,1]),mean(matrix[,1]) + sd(matrix[,1]) / sqrt(nregs),mean(matrix[,1]) - sd(matrix[,1]) / sqrt(nregs),xlim = c(.95,1.05),ylim = c(0,.6),xlab="p/m standard error",ylab="")
errbar(1,mean(matrix[,1]),mean(matrix[,1]) + 2*sd(matrix[,1]) / sqrt(nregs),mean(matrix[,1]) - 2*sd(matrix[,1]) / sqrt(nregs),xlim = c(.95,1.05),ylim = c(0,.6),xlab="p/m 2 standard errors",ylab="")
errbar(1,mean(matrix[,1]),mean(matrix[,1]) + sd(matrix[,1]),mean(matrix[,1]) - sd(matrix[,1]),xlim = c(.95,1.05),ylim = c(0,.6),xlab="pm 1 standard deviation",ylab="" )