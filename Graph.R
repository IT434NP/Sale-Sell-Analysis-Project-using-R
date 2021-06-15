graphs <- function(g_id){
  load("Entry_Excel.Rda")
  #g_id<-7 
  d1=c(my_data[3,g_id],my_data[4,g_id],my_data[5,g_id],my_data[6,g_id],my_data[7,g_id],my_data[8,g_id],my_data[9,g_id],my_data[10,g_id],my_data[11,g_id],my_data[12,g_id],my_data[13,g_id],my_data[14,g_id],my_data[15,g_id],my_data[16,g_id],my_data[17,g_id])
  d2=c(my_data[3,g_id+1],my_data[4,g_id+1],my_data[5,g_id+1],my_data[6,g_id+1],my_data[7,g_id+1],my_data[8,g_id+1],my_data[9,g_id+1],my_data[10,g_id+1],my_data[11,g_id+1],my_data[12,g_id+1],my_data[13,g_id+1],my_data[14,g_id+1],my_data[15,g_id+1],my_data[16,g_id+1],my_data[17,g_id+1])
  d3=c(my_data[3,g_id+2],my_data[4,g_id+2],my_data[5,g_id+2],my_data[6,g_id+2],my_data[7,g_id+2],my_data[8,g_id+2],my_data[9,g_id+2],my_data[10,g_id+2],my_data[11,g_id+2],my_data[12,g_id+2],my_data[13,g_id+2],my_data[14,g_id+2],my_data[15,g_id+2],my_data[16,g_id+2],my_data[17,g_id+2])
  data_plot <- data.frame(Ranges=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15),
                          Type=c("Gold","Shakti","Other"),
                          d1,d2,d3)
  print(data_plot)
  plot(data_plot$Ranges, data_plot$Type, type = "b", col = 1, xlab="Days", ylab="Quantity", main=my_data[1,g_id], xlim=c(0,15), ylim=c(0,100))  # Plot with Base R
  lines(data_plot$Ranges, data_plot$d1, type = "b", col = 2)
  lines(data_plot$Ranges, data_plot$d2, type = "b", col = 3)
  lines(data_plot$Ranges, data_plot$d3, type = "b", col = 4)
  points(data_plot$Ranges[15], data_plot$d1[15], col="black", pch=16)
  points(data_plot$Ranges[15], data_plot$d2[15], col="yellow", pch=16)
  points(data_plot$Ranges[15], data_plot$d3[15], col="purple", pch=16)
  legend("topleft",c("Gold","Shakti","Other"), lwd=c(5,4,3), col=c("green","red","Blue"), y.intersp=1.5)
  legend("topright",c("Average Gold","Average Shakti","Average Other"),pch=16,col=c("black","yellow","purple"))
}