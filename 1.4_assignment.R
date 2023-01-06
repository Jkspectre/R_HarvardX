library(dplyr)
library(dslabs)
data(heights)
options(digits = 3)
avg_heights <- mean(heights$height)
ind <- heights %>% filter(height>avg_heights & sex=='Female') %>% nrow()
ind

str(heights)
str(heights$sex)
levels(heights$sex)
factor(heights$sex, levels=c('Male', 'Female'))
table(heights$sex)/1050

min_height <- min(heights$height)
heights$sex[match(min_height, heights$height)]

min(heights$height)
max(heights$height)

x<- as.numeric(min(heights$height):max(heights$height))
## x<- as.numeric(seq(min(heights$height),max(heights$height)))
x<- 50:82
x
class(x)
heights$height[!x %in% heights$height]
sum(!(x %in% heights$height))
heights$height

heights$height[18]
heights2 <- mutate(heights, ht_cm = height*2.54)
heights2$ht_cm[18]
heights2 %>% filter(sex=='Female') %>% summarise(avg=mean(ht_cm))

data(olive)
head(olive)
plot(olive$palmitic, olive$palmitoleic)
plot(log10(olive$palmitic), log10(olive$palmitoleic))

hist(olive$eicosenoic)

boxplot(palmitic~region, data=olive)
