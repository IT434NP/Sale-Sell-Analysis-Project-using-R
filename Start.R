print("What Do You Want To Do")
print("1.Data Entry")
print("2.Data Analysis")
print("3.Reset Table")
print("4.Stop")
x=as.integer(readline())
if(x==1){
  source("Area.R")
} else if(x==2){
  source("Analysis.R")
} else if(x==3){
  source("Entry To Zero.R")
} else if(x==4){
  print("Thanks....")
} else{
  print("Wrong Selection")
}

