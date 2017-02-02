quartz.options(width=6, height=6)

matrix <- as.matrix(read.csv(file="Matrix.csv",header=FALSE))

boxplot(matrix[,40],matrix[,41],matrix[,60],xlab="Region Labels",ylab="Communication Strength",names=c("40","41","60"))
