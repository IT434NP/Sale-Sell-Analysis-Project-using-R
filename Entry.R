add_data <- function(a_id){
  load("Entry_Excel.Rda")
  i <- 3
  j <- 3
  while(i!=17){
    if(my_data[i,a_id]==0){
      j<-i
      break
    }
    i<-i+1
  }
  i<-0
  a_id <- a_id-2
 # print(a_id)
  print("Write value for gold, shakti, other")
  while(i<3){
    #print("Value for ",as.char(my_data[2,a_id]))
    val = as.integer(readline())
    my_data[j,a_id] <- val
    i<-i+1
    a_id <- a_id+1
  }
  View(my_data)
  save(my_data,file="Entry_Excel.Rda")
  source("Start.R")
}