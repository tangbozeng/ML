library(ggplot2) 
ggplot(data=iris) # nothing happened, but just tell which data to load
ggplot(data=iris) + aes(x=Petal.Width, y=Petal.Length)# add aes for x and y, shape, line type, size color, fill
ggplot(data=iris) + aes(x=Petal.Width, y=Petal.Length)+geom_point() # add plot type
ggplot(data=iris) + aes(x=Petal.Width, y=Petal.Length) + geom_point() + geom_line() # add mutiple plot

p <- ggplot(data=iris) + aes(x=Petal.Width, y=Petal.Length)
p + geom_point(aes(colour=Species)) # demtermine colour as speices
p + geom_point() + geom_jitter(colour="Red")# over plotting??

p <- ggplot(iris) + aes(x=Species, y=Petal.Width)
p + geom_jitter()
p + geom_jitter(aes(colour=color), position=position_dodge(width=0.5) )  # make dots into orders
p <- ggplot(diamonds) + aes(carat, price) 
p + geom_point(aes(colour=cut)) + facet_wrap( ~ cut) # sperate plot, xy+cut, but seperate cut (_3d)
geom_point(aes(colour=cut)) + facet_grid(color ~ cut) # xy+cut, but sperate cut with color(4d)
p<-ggplot(CO2) + aes(Plant, uptake)
p+geom_point(aes(colour=Type)) + facet_grid(Type ~ Treatment)



summary(iris)
intercept is c vaues


