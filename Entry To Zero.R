library(ggplot2)
library(openxlsx)
load("Entry_Excel.Rda")
pass<-readline(prompt = "Enter Password for Resetting ")
if(pass=="Admin123"){
  i<-3
  while(i<=17){
    j<-1
    while(j<=9){
      my_data[i,j]<-0
      j<-j+1
    }
    i<-i+1
  }
  save(my_data,file="Entry_Excel.Rda")
  
}
source("Start.R")
#add_row(my_data2, X1='0',X2='0',X3='0',X4='0',X5='0',X6='0',X7='0',X8='0',X9='01', .after=17)
# x<-data.frame('0','0','0','0','0','0','0','0','0')
# my_data2 <- bind_rows(my_data2, x)
#my_data2 <- InsertRow(x, RowNum = 18)

