mat1 <- matrix(c(1,2,3,4))
mat1
mat2<-matrix(c(1,2,3,4),nrow=2)
mat2
mat3<-matrix(c(1,2,3,4),nrow=2,byrow=T)
mat3
mat3[,1]
mat3[1,]
mat3[1,1]
mat4 <- matrix(seq(1:9), nrow=3, byrow=T)
mat4
mat4<-rbind(mat4,c(11,12,13))
mat4
mat4<-cbind(mat4,c(13,14,15,16))
mat4
mat5<-matrix(c('a','b','c','d'),nrow=2,byrow=T)
mat5
mat5<-cbind(mat4,c('e','f'))
mat5
colnames(mat5)<-c('First','Second','Third',"Foured","ERROR")
mat5


mat10<-matrix(c("봄","가을","여름","겨울"),nrow=2,byrow=T)
mat10
#######################################################################################################################
seasons<-matrix(c("봄","가을","여름","겨울"),nrow=2,byrow=T)
seasons
seasons<-matrix(c("봄","여름","가을","겨울"))
seasons<-cbind(seasons,c("여름","겨울"))
seasons
seasons<-rbind(seasons,c("초봄","초가을"))
seasons
######################################################################################################################3
#Array
array1<-array(c(1:12),dim=c(4,3))
array1
array2<-array(c(1:12),dim=c(2,2,3))
array2
array2[1,1,3]
######################################################################################################################3
#List

list1<-list(name="Michael Son", address='DAEJEON',tel='010-7425-8817',pay=800)
list1
list1$name
list1$address
list1$birth<-'1987-04-27'
list1
list1$birth<-NULL
list1
