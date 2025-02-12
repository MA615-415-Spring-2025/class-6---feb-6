library(tidyverse)
library(palmerpenguins)

ggplot(mpg, aes(cty, hwy)) + geom_point(colour = "red")


ggplot(mpg, aes(cty, hwy)) + geom_smooth(method = lm)



ggplot(mpg, aes(class, hwy)) + geom_col()
