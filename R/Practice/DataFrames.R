# Creating Data Frames
empty <- data.frame()

c1 <- 1:10
c2 <- letters[1:10]
df <- data.frame(col.name.1 = c1, col.name.2 = c2)

# Importing and exporting data
write.csv(df, file='saved_df.csv')
df2 <- read.csv('saved_df.csv')

# Getting information about data frame
nrow(df)
ncol(df)
colnames(df)
rownames(df)
str(df) # Returns Structure of df
summary(df) # Statistical Summary of df

# Referencing cells
df[[5,2]]
df[[5,'col.name.2']]
df[[2,'col.name.1']] <- 99 # Replace single cell value

# Referencing rows
df[1,]

# Referencing columns
head(mtcars)
mtcars$mpg # Return vector (Or mtcars[,'mpg'], mtcars[,1], mtcars[['mpg']])
mtcars['mpg'] # Return data frame
head(mtcars[c('mpg','cyl')]) # Get multiple columns

# Adding rows
df2 <- data.frame(col.name.1=2000, col.name.2='new')
dfnew <- rbind(df, df2)

# Adding columns
df$newcol <- 2*df$col.name.1 # Add new column based on existing column
df$newcol.copy <- df$newcol # Make copy of column
df[,'newcol.copy2'] <- df$newcol
head(df)

# Setting column names
colnames(df) <- c('1','2','3','4','5') # Rename all columns
head(df)
colnames(df)[1] <- 'NEW COL NAME' # Rename one column
head(df)

# Selecting multiple rows
df[1:10,]
df[1:3,]
head(df,7) # Return first 7 rows (default returns 6 rows)
df[-2,] # Selects everything but 2nd row
mtcars[ mtcars$mpg > 30 ,] # Conditional selection of rows
mtcars[ (mtcars$mpg > 20) & (mtcars$cyl == 6) ,] # Conditional selection for multiple conditions
mtcars[ (mtcars$mpg > 20) & (mtcars$cyl == 6) ,c('mpg','cyl','hp')] # Conditional selection for multiple conditions, and return only subset of columns
subset(mtcars, mpg>20 & cyl==6) # Conditional selection using subset

# Selecting multiple columns
mtcars[,c(1,2,3)]
mtcars[,c('mpg','cyl','disp')]

# Dealing with missing data
any(is.na(mtcars))
any(is.na(mtcars$mpg))
df[is.na(df)] <- 0
mtcars$mpg[is.na(mtcars$mpg)] <- mean(mtcars$mpg)