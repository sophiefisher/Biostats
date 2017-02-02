matrix <- as.matrix(read.csv(file="Matrix.csv",header=FALSE))

matrixv <- matrix(matrix,1,112*112)
xr <- sample(112*112)
nsamples <- 100

prob <- length(which(matrixv[xr[1:nsamples]]>0.9))/nsamples
prob
prob2 <- length(which(matrixv[xr[1:nsamples]]<0.1))/nsamples
prob2