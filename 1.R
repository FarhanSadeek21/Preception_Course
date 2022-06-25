library(tidyverse)
library(primer.data)

nhanes |>
    filter(age >= 18, survey == 2009) |>
    ggplot(aes(weight, fill=gender))+
    geom_histogram(binwidth=5, color='black', linetype='dashed')+
    facet_wrap(~gender)+
    labs(title='Adult weight distribution in 2009 survey',
         subtitle='Male weights are more evenly distributed than female weight',
         x="Weight(lbs)",
         y="Count",
         caption="National Health and Nutrition Examination Survey")


nhanes |>
    filter(age >= 18, survey == 2009) |>
    ggplot(aes(bmi, fill=gender))+
    geom_histogram(binwidth=1.5, color='black')+
    facet_wrap(~gender)+
    labs(title='Adult BMI distribution in 2009 survey',
         subtitle='Male BMIs are more evenly distributed than female weight',
         x="Weight(lbs)",
         y="Count",
         caption="National Health and Nutrition Examination Survey")


bmi <- nhanes |>
    filter(age >= 18) |>
    select(bmi) |>
    drop_na()