quartz.options(width=10, height=3.75)

matrix <- as.matrix(read.csv(file="Matrix.csv",header=FALSE))

#both do same thing
#layout(matrix(c(1,2,3),1,3))
par(mfrow=c(1,3))

plot(matrix[,1],matrix[,2],xlab = "Region 1 Strength",ylab = "Region 2 Strength",xlim=c(0,.8),ylim=c(0,1))

plot(matrix[,1],matrix[,11],xlab = "Region 1 Strength",ylab = "Region 12 Strength",xlim=c(0,.8),ylim=c(0,1))

plot(matrix[,1],matrix[,100],xlab = "Region 1 Strength",ylab = "Region 100 Strength",xlim=c(0,.8),ylim=c(0,.5))
