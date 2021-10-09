library(tidyverse)
library(ggplot2)

marbles <- c()

for (i in 1:5000) {
  marbles <- append(marbles, "red")
}

for (i in 1:5000) {
  marbles <- append(marbles, "blue")
}

# For each of the prescribed sample sizes...
for (sample_size in c(3, 10, 100, 1000)) {
    my_sample <- sample(marbles, sample_size)
    my_sample <- as.factor(my_sample)
    my_sample_dataframe = tibble(my_sample)
    my_sample_dataframe %>%
      ggplot() +
      geom_bar((mapping = aes(x = my_sample)))
}



