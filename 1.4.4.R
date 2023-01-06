library(dslabs)
library(dplyr)
data(heights)
names(heights)
h_s = ifelse(heights$sex == 'Female', 1, 2)
sum(h_s)

h_h = ifelse(heights$height > 72, heights$height, 0)
mean(h_h)

inches_to_ft = function(inch){
  foot = inch/12
  foot
}
inches_to_ft(144)
sum(inches_to_ft(heights$height)<5)

all(FALSE, FALSE, FALSE)
