library(dplyr)
head(mtcars)

#1.
filter(mtcars, mpg>20, cyl==6)

#2.
head(arrange(mtcars, cyl, desc(wt)))

#3.
head(select(mtcars, mpg, hp))

#4.
distinct(select(mtcars, gear))

#5.
head(mutate(mtcars, Performance = hp / wt))

#6.
summarise(mtcars, avg_mpg = mean(mpg))

#7.
mtcars %>% filter(cyl==6) %>% summarise(avg_hp = mean(hp))
