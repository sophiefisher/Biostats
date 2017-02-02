quartz.options(width=5, height=5)
matrix <- as.matrix(read.csv(file="Matrix.csv",header=FALSE))

nregs <- 112
matrix[matrix > .5] <- 1
matrix[matrix < .5] <- 0

freq <- colSums(matrix)
barplot(freq, col="blueviolet",xlab = "Brain Region",ylab="Frequency of Strong Elements",ylim=c(0,25),names.arg=c(1:112))

expected <- sum(freq)/nregs
x2 <- sum((freq-expected*t(rep(1,length(freq))))^2 / expected*rep(1,length(freq)))
x2