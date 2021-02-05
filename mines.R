library(ggplot2)
roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = FALSE,
                 prob = c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8))
  sum(dice)
}
roll()

rolls <- replicate(1000, roll())
qplot(rolls, binwidth = 1)

die <- c(1,2,3,4,5,6)
die
typeof(die)
is.atomic(die)
is.vector(die)
length(die)
