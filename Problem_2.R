#Problem 2
#(a)
xmin<-c(23.0,20.5,28.2,20.3,22.4,17.2,18.2)
xmax<-c(25.0, 22.8,31.2,27.3,28.4,20.2,24.1)
#(b)
xmax-xmin
#(c)
avgMAX<-mean(xmax)
avgMAX
avgMIN<-mean(xmin)
avgMIN
#(d)
xmin[xmin<avgMIN]
#(e)
xmax[xmax>avgMAX]
#(f)
names(xmin)<-c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
names(xmax)<-c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
#(g)
temperature<-data.frame(xmax,xmin)
temperature
#(h)
temperature<-within(temperature,{xminFahrenheit<-xmin*9/5 +32})
temperature
#(i)
tempFahrenheit<-data.frame(xminFahreneheit=xmin*9/5+32,
                           xmaxFahreneheit=xmax*9/5+32)
tempFahrenheit
#(j)
d5tempFahrenheit<-data.frame(Min_temp_Fahreneheit=xmin[seq(1:5)]*9/5+32,
                            Max_temp_Fahrenejeit=xmax[seq(1:5)]*9/5+32)
d5tempFahrenheit
d5tempFahrenheit<-data.frame(Min_temp_Fahreneheit=xmin[seq(length(xmin)-2)]*9/5+32,
                             Max_temp_Fahrenejeit=xmax[seq(length(xmax)-2)]*9/5+32)
d5tempFahrenheit                                                     