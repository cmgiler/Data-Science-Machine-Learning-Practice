library(ggplot2)
library(ggplot2movies)

# ------------
# HISTOGRAMS
# Data & Aesthetics
pl <- ggplot(movies, aes(x=rating))
# Geometry
pl2 <- pl + geom_histogram(binwidth = 0.1, aes(fill=..count..))
# Coordinates
pl3 <- pl2 + xlab('Movie Rating') + ylab('My Count')
print(pl3 + ggtitle('Distribution of All Movie Ratings from "ggplot2movies" Dataset'))

# ------------
# SCATTERPLOTS
# Data & Aesthetics
pl <- ggplot(mtcars, aes(x=wt, y=mpg))
# Geometry
pl2 <- pl + geom_point(aes(color=hp), size=5)
pl3 <- pl2 + scale_color_gradient(low='green', high='black')
print(pl3)

# ------------
# BARPLOTS
# Data & Aesthetics
pl <- ggplot(mpg, aes(x=class))
# Geometry
print(pl + geom_bar(aes(fill=drv), position="dodge"))

# ------------
# BOXPLOTS
# Data & Aesthetics
pl <- ggplot(mtcars, aes(x=factor(cyl), y=hp))
# Geometry, Coordinates & Themes
print(pl + geom_boxplot(aes(fill=factor(cyl))) + coord_flip() + theme_bw())

# ------------
# 2 VARIABLE PLOTTING
pl <- ggplot(movies, aes(x=year, y=rating))
pl2 <- pl + geom_hex()
pl3 <- pl2 + scale_fill_gradient(high='red', low='blue')
print(pl3)
# Density
pl2 <- pl + geom_density2d()
print(pl2)

# ------------
# COORDINATES & FACETING
pl <- ggplot(mpg, aes(x=displ, y=hwy)) + geom_point(aes(color=class))
# pl2 <- pl + coord_cartesian(xlim=c(1,4), ylim=c(15,30))
# pl2 <- pl + coord_fixed(ratio=1/3)
pl2 <- pl + facet_grid(drv~cyl)
print(pl2)

# ------------
# THEMES
library(ggthemes)
theme_set(theme_tufte())
pl <- ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point(size=3)
print(pl)


# ------------
# Exercises
library(ggplot2)
library(ggthemes)
#1.
ggplot(mpg, aes(x=hwy)) + geom_histogram(fill='red', bins=20)

#2.
pl <- ggplot(mpg, aes(x=manufacturer)) + geom_bar(aes(fill=factor(cyl)))

#3.
theme_set(theme_wsj())
pl <- ggplot(txhousing, aes(x=sales, y=volume)) + 
        geom_point(alpha=0.1, color='blue') + 
        geom_smooth(color='red')

library(plotly)

print(ggplotly(pl))






