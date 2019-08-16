df <- read.csv("hw1_data.csv", header = TRUE)
str(df)
x <- df[1:2,]
x
head(df)
df[1:2,]
tail(df, 2)
tail(df)
name <- "Ozone"
df[47, name]
bad <- is.na(df$Ozone)
bad
length(bad)
str(df)
head(bad)
class(bad)
bad <- bad == TRUE
badrm(bad)
rm(bad)
na_df <- df[is.na(df$Ozone), ]
na_df
length(na_df)
new_df <- df[!na_df]
new_df <- df[!is.na(df$Ozone), ]
mean(new_df$Ozone)
oz_temp_biggies <- df[df$Ozone > 31 & df$Temp > 90, ]
mean(oz_temp_biggies$Solar.R)
oz_temp_biggies <- oz_temp_biggies[!is.na(oz_temp_biggies$Ozone), ]
jun_df <- df[df$Month == 6, ]
mean(jun_df$Temp)
str(jun_df)
oz_may <- new_df[new_df$Month == 5, ]
max(oz_may$Ozone)
