#Problem one
#1.Create a vector with the numbers 4, 1, 1, 4 called x
x<-c(4,1,1,4)
#2.Create a second vector called y with the numbers 1, 4.
y<-c(1,4)
#(c) We have vectors whit different size. The smallar one (y) is recycled and it becomes c(1,4,1,4)
x-y
 
s<-c(x,y)
#(e)length=60
rep(s,10)
length(rep(s,10))
#(f)
rep(s,each=3)
#(g)
seq(7,21,by=1)
7:21
#(h)
length(seq(7,21))

