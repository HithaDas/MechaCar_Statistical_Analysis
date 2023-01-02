demo_table <- read.csv(file='demo.csv',check.names=F,stringsAsFactors = F)

install.packages("rjson")
library("rjson")
demo_table2 <- fromJSON(file='demo.json')

# Select Data with Logical Operators -- similiar to Python
## Filter used cars by price greater than $10,000
filter_table <- demo_table2[demo_table2$"price">10000]

# Another method to filter and subset data frames
filter_table2 <- subset(demo_table2, "price" > 10000 & "drive" == "4wd")

filter_table3 <- demo_table2[("clean" %in% demo_table2$title_status) & (demo_table2$price > 10000) & (demo_table2$drive == "4wd"),]

# Creating smaller vector from large one
sample(c("cow", "deer", "pig", "chicken", "duck", "sheep", "dog"), 4)

# Getting vector from 2 dimensional data structure
num_rows <- 1:nrow(demo_table)

sample_rows <- sample(num_rows, 3)

demo_table[sample_rows,]
demo_table[sample(1:nrow(demo_table), 3),]

# 16.2.5 Transform, Group, and Reshape Data Using the Tidyverse Package
library(tidyverse)

#add columns to original data frame
demo_table <- demo_table %>% mutate(Mileage_per_Year=Total_Miles/(2020-Year),IsActive=TRUE) 

#create summary table
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups = 'keep') 

#create summary table with multiple columns
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer),Maximum_Price=max(price),Num_Vehicles=n(), .groups = 'keep')


# reshape
demo_table3 <- read.csv('demo2.csv',check.names = F,stringsAsFactors = F)

long_table <- gather(demo_table3,key="Metric",value="Score",buying_price:popularity)

long_table <- demo_table3 %>% gather(key="Metric",value="Score",buying_price:popularity)

wide_table <- long_table %>% spread(key="Metric",value="Score")

#import dataset into ggplot2
plt <- ggplot(mpg,aes(x=class)) 

#plot a bar plot
plt + geom_bar() 


#create summary table
mpg_summary <- mpg %>% group_by(manufacturer) %>% summarize(Vehicle_Count=n(), .groups = 'keep')

#import dataset into ggplot2
plt <- ggplot(mpg_summary,aes(x=manufacturer,y=Vehicle_Count)) 

#plot a bar plot
plt + geom_col() 

#plot bar plot with labels

plt + geom_col() + xlab("Manufacturing Company") + ylab("Number of Vehicles in Dataset")

#rotate the x-axis label 45 degrees to avoid overlapping

plt + geom_col() + xlab("Manufacturing Company") + ylab("Number of Vehicles in Dataset") + 
theme(axis.text.x=element_text(angle=45,hjust=1))

#create summary table

mpg_summary <- subset(mpg,manufacturer=="toyota") %>% group_by(cyl) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep')

#import dataset into ggplot2

plt <- ggplot(mpg_summary,aes(x=cyl,y=Mean_Hwy))
plt + geom_line()

#add line plot with labels
plt + geom_line() + scale_x_discrete(limits=c(4,6,8)) + scale_y_continuous(breaks = c(16:30))

#import dataset into ggplot2
plt <- ggplot(mpg,aes(x=displ,y=cty))

#add scatter plot with labels
plt + geom_point() + xlab("Engine Size (L)") + ylab("City Fuel-Efficiency (MPG)")

#import dataset into ggplot2
plt <- ggplot(mpg,aes(x=displ,y=cty,color=class)) 

#add scatter plot with labels
plt + geom_point() + labs(x="Engine Size (L)", y="City Fuel-Efficiency (MPG)", color="Vehicle Class")

#import dataset into ggplot2
plt <- ggplot(mpg,aes(x=displ,y=cty,color=class,shape=drv))

#add scatter plot with multiple aesthetics
plt + geom_point() + labs(x="Engine Size (L)", y="City Fuel-Efficiency (MPG)", color="Vehicle Class",shape="Type of Drive")

#import dataset into ggplot2
plt <- ggplot(mpg,aes(y=hwy))

#add boxplot
plt + geom_boxplot()

#import dataset into ggplot2
plt <- ggplot(mpg,aes(x=manufacturer,y=hwy))

#add boxplot and rotate x-axis labels 45 degrees
plt + geom_boxplot() + theme(axis.text.x=element_text(angle=45,hjust=1))

#create summary table
mpg_summary <- mpg %>% group_by(class,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep') 

plt <- ggplot(mpg_summary, aes(x=class,y=factor(year),fill=Mean_Hwy))

#create heatmap with labels
plt + geom_tile() + labs(x="Vehicle Class",y="Vehicle Year",fill="Mean Highway (MPG)")

#create summary table
mpg_summary <- mpg %>% group_by(model,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep')

#import dataset into ggplot2
plt <- ggplot(mpg_summary, aes(x=model,y=factor(year),fill=Mean_Hwy))

#add heatmap with labels/ rotate x-axis
plt + geom_tile() + labs(x="Model",y="Vehicle Year",fill="Mean Highway (MPG)") +  
theme(axis.text.x = element_text(angle=90,hjust=1,vjust=.5))


plt <- ggplot(mpg,aes(x=manufacturer,y=hwy)) #import dataset into ggplot2
plt + geom_boxplot() + #add boxplot
theme(axis.text.x=element_text(angle=45,hjust=1)) + #rotate x-axis labels 45 degrees
geom_point() #overlay scatter plot on top

mpg_summary <- mpg %>% group_by(class) %>% summarize(Mean_Engine=mean(displ), .groups = 'keep') #create summary table
plt <- ggplot(mpg_summary,aes(x=class,y=Mean_Engine)) #import dataset into ggplot2
plt + geom_point(size=4) + labs(x="Vehicle Class",y="Mean Engine Size") #add scatter plot

mpg_summary <- mpg %>% group_by(class) %>% summarize(Mean_Engine=mean(displ),SD_Engine=sd(displ), .groups = 'keep')
plt <- ggplot(mpg_summary,aes(x=class,y=Mean_Engine)) #import dataset into ggplot2
plt + geom_point(size=4) + labs(x="Vehicle Class",y="Mean Engine Size") + #add scatter plot with labels
geom_errorbar(aes(ymin=Mean_Engine-SD_Engine,ymax=Mean_Engine+SD_Engine)) #overlay with error bars

mpg_long <- mpg %>% gather(key="MPG_Type",value="Rating",c(cty,hwy)) #convert to long format
head(mpg_long)



plt <- ggplot(mpg_long,aes(x=manufacturer,y=Rating,color=MPG_Type)) #import dataset into ggplot2
plt + geom_boxplot() + facet_wrap(vars(MPG_Type)) + #create multiple boxplots, one for each MPG type
theme(axis.text.x=element_text(angle=45,hjust=1),legend.position = "none") + xlab("Manufacturer") #rotate x-axis labels