## NOTE: readability: leave some blank linkes between the code to make it more readable

## NOTE: always leave space before and after <-, -, +, * and /
## At the very least use the automatic prettifier that comes with R-Studio. Select all lines (e.g. with Ctrl-A)
## and select Code => Reformat Code

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
## NOTE: not DRY (don't repeate yourself). Assign the dates to a vector and
## then use that vector to assign names to the elements of xmin and xmax

names(xmin)<-c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
names(xmax)<-c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')

#(g)
temperature<-data.frame(xmax,xmin)
temperature

#(h)

## NOTE: improve readability
temperature<-within(temperature,{
	xminFahrenheit<-xmin*9/5 +32
})
temperature

#(i)
tempFahrenheit<-data.frame(xminFahreneheit=xmin*9/5+32,
                           xmaxFahreneheit=xmax*9/5+32)
tempFahrenheit

#(j)
## Better:
tempFahrenheit[1:5, ]
tempFahrenheit[-(6:7), ]

d5tempFahrenheit<-data.frame(Min_temp_Fahreneheit=xmin[seq(1:5)]*9/5+32,
                            Max_temp_Fahrenejeit=xmax[seq(1:5)]*9/5+32)
d5tempFahrenheit
d5tempFahrenheit<-data.frame(Min_temp_Fahreneheit=xmin[seq(length(xmin)-2)]*9/5+32,
                             Max_temp_Fahrenejeit=xmax[seq(length(xmax)-2)]*9/5+32)
d5tempFahrenheit                                                     
