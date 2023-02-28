# Importing the raw data csv file into R studio and creating a data frame
load_df <- read.csv("C:/Users/dsai0/OneDrive/Desktop/PDS/main/RAW DATA/Raw_data.csv")



# Checking whether the data frame has Null values or not.
is.na(load_df)

# Here the Total number of Null values in the data frame.
sum(is.na(load_df))

# since there are no Null values in the data frame, there is no need of removing the values


# Save the clean data frame to disk data
write.csv(load_df, "C:/Users/dsai0/OneDrive/Desktop/PDS/main/CLEAN DATA/CLEAN_DATA.csv")












