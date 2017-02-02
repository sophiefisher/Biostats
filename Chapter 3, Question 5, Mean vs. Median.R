quartz.options(width=9.5, height=5)

matrix <- as.matrix(read.csv(file="Matrix.csv",header=FALSE))

par(mfrow=c(1,2))

hist(matrix[,1],seq(min(matrix[,1]),max(matrix[,1]),length.out=11),xlab="Strength",main="Column 1",xlim=c(0,.8),ylim=c(0,40))
hist(matrix[,100],seq(min(matrix[,100]),max(matrix[,100]),length.out=11),xlab="Strength",main="Column 100",xlim=c(0,.5),ylim=c(0,40))

mean(matrix[,1])
median(matrix[,1])
mean(matrix[,100])
median(matrix[,100])