matrix <- as.matrix(read.csv(file="Matrix.csv",header=FALSE))
groups <- as.matrix(read.csv(file="Groups.csv",header=FALSE))
group1 <- which(groups==1)

matrixset <- matrix[group1,]
nregs <- 112
set <- matrix(matrixset,length(group1)*nregs,1)
matrixset[matrixset > .5] <- 1
matrixset[matrixset < .5] <- 0

pvstrong <- (length(group1)*length(group1)) / (length(group1)*(length(group2)+length(group3)))

w <- which(matrixset > 0, arr.ind=TRUE)
strongix <- w[,1]
strongib <- w[,2]
rp <- sample(length(strongix))
first25 <- matrix(c(strongix[rp[1:25]],strongib[rp[1:25]]),ncol=2)

25 * pvstrong

y <- length( which(first25[,2]<(length(group1)+1)))
y
prob <- choose(25,y)*((pvstrong)^(y))*((1-pvstrong)^(25-y))
prob
for (i in y:25) 
	prob[i-(y-1)] <- choose(25,i)*((pvstrong)^(i))*((1-pvstrong)^(25-i))
pval <- 2*sum(prob)
pval