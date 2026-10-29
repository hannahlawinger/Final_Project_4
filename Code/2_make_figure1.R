here::i_am("Code/2_make_figure1.R")

data <- read.csv(
  file = here::here("Raw_data/Limonade_EMS_all.csv"),
  fileEncoding = "UTF-8"
)

library(ggplot2)

figure1 <- ggplot(data, aes(x = factor(frequency), y = age)) +
  geom_boxplot() +
  labs(
    x = "MDA frequency",
    y = "Age (years)"
  )

ggsave(
  filename = here::here("Output/figure1.png"),
  plot = figure1,
  width = 7,
  height = 7
)

