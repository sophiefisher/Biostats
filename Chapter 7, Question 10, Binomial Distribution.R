matrix <- as.matrix(read.csv(file="Matrix.csv",header=FALSE))
groups <- as.matrix(read.csv(file="Groups.csv",header=FALSE))

group1 <- which(groups==1)
group2 <- which(groups==2)
group3 <- which(groups==3)

set <- matrix( c(matrix(matrix[group1,group1],length(group1)*length(group1),1),matrix(matrix[group2,group2],length(group2)*length(group2),1)) ,244,1)
set
