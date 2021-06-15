load("Entry_Excel.Rda")
print("Select Your Area")
n=ncol(my_data)
i <- 1
while(i<n){
  print(c(1+as.integer(i/3),"=",my_data[1,i]))
  i <- i+3
}  
area = as.integer(readline())
if(area>0 && area<=n/3){
  source("Graph.R")
  graphs(g_id<-((area*3)-2))
}else {
  print("Wrong Selection")
  source("Analysis.R")
}
save(my_data,file="Entry_Excel.Rda")