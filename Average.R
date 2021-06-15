load("Entry_Excel.Rda")
y<-ncol(my_data)
x<-nrow(my_data)
j<-1
while(j!=(y+1)){
  sums<-0
  i<-3
  while(i!=x && my_data[i,j]!=0){
    sums<-sums+as.integer(my_data[i,j])
    i<-i+1
  }
  my_data[17,j]<-(sums/(i-3))
  j<-j+1
}
save(my_data,file="Entry_Excel.Rda")
View(my_data)
source("Start.R")