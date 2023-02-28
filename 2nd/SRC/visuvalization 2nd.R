# Importing the required libraries into R
library(ggplot2)
library(dplyr)
install.packages('farver')
# Importing the raw data csv file into R studio and creating a data frame
load_df <- read.csv("C:/Users/dsai0/OneDrive/Desktop/PDS/2nd/RAW DATA/stuper.csv")



# Checking whether the data frame has Null values or not.
is.na(load_df)

# Here the Total number of Null values in the data frame.
sum(is.na(load_df))

# since there are no Null values in the data frame, there is no need of removing the values


# Save the clean data frame to disk data
write.csv(load_df, "C:/Users/dsai0/OneDrive/Desktop/PDS/2nd/CLEAN DATA/CLEAN DATA.csv")

# view data set
View(load_df)

#The number of rows in the data
nrow(load_df)

# to view last values
tail(load_df, 10)

# to view number of values in data set
head(load_df, 11)

#  to view number of columns
ncol(load_df)

# to view data types names
str(load_df)

# to view null values in column data set
colSums(is.na(load_df))

names(load_df)
# to find average values of math score
Average = mean(load_df$"math.score")

# plot1 - visuvalization
ggplot(load_df, mapping = aes(Average, fill = gender)) + geom_bar(position = "dodge") +
  ggtitle("Average of Maths Scores by Gender") + xlab("average score") + ylab("Count") + labs (fill = "gender")

# The graphic above provides information on the average math scores by gender in the student performance data set. The averages are displayed by gender using a bar plot.
# are tinted blue, while females are colored red. The data shows that, as compared to men, ladies have the greatest average in math. For the analyst who wishes to examine the average of math results, this graphic is handy.
# It's used to swiftly display patterns or trends.


# plot 2
# To visualize the data in between Reading and writing scores)
ggplot(load_df, aes(x = reading.score, y = writing.score)) + 
  geom_point()+ geom_smooth() + 
  ggtitle("Relationship between Reading and Writing Scores") + xlab("Reading Score") + ylab("Writing Score")

#The information on the correlation between reading and writing scores is displayed in the image above.
# To display their connection to one another, a scatter plot is employed. The reading score is shown by the x axis, while the writing score is represented by the # y axis. The correlation between the reading and writing scores is shown to be favorable.
# The analyst who wishes to compare the relationship between two variables might benefit from this representation.

# plot 3
# Creating fourth visualization based on the variation of writing scores among different groups

boxplot(load_df$writing.score ~ load_df$race.ethnicity, main = "Variation of Writing Scores among the Groups", 
        xlab = "Groups", ylab = "Averages", col = "violet")

# The information regarding the differences in writing scores between the groups is displayed in the above graphic.
# The variation is displayed using a box plot. The boxes had a violet tint. The average for each group is displayed by the thick black line in the centre of the boxes #. From reading the sentence, it is clear that group E scored the highest in writing when compared to the other groups.
# This image is useful for analyzing the differences in variables across several groups. These graphs were used to display the variability of numerical data.

#plot 4

ggplot(load_df, aes(x=factor(2), fill = lunch))+
  geom_bar(width = 2)+ labs(title = "Distribution of lunch types among the students") +
  coord_polar("y")

# The above plot shows the information about the distribution of lunch types among the students. A pie chart is used to display the information.
# The standard is colored in blue and the free/reduced is colored in red. It is observed that there is more standard lunch type than the othe.
# These kind of charts helpful in showing the percentages of data in whole.


#plot 5
# To visualize the data of writing scores)
hist(load_df$writing.score, main = "Distribution of writing score", xlab = "writing score", ylab = "Count", col = "blue")

# The distribution of the reading score variable is depicted in the above graphic. The skewness of data is displayed using a histogram.
# Green may be seen in the histogram. The data is found to be more evenly distributed between 60 and 80.
# These visualizations are employed to display the distribution of data.

















