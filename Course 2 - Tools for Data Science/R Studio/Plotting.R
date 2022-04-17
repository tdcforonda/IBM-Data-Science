library(datasets)
library(ggplot2)

data(mtcars)
# View first 5 rows
head(mtcars, 5)

# create a scatterplot of displacement (disp) and miles per gallon (mpg)
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")+ labs(x = "Displacement", y = "Miles per Gallon")

#make vs a factor
#we use <- similar as to how we use = for assigning variables
#we use $ sign to access column
mtcars$vs <- as.factor(mtcars$vs)

# create boxplot of the distribution for v-shaped and straight Engine
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot(alpha=0.3) + theme(legend.position="none")
# we use alpha and theme to add color to the boxplots

#finally, we create the histogram of weight
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)
