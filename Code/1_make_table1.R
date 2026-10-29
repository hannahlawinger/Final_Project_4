here::i_am("Code/1_make_table1.R")

data <- read.csv(
  file = here::here("Raw_data/Limonade_EMS_all.csv"),
  fileEncoding = "UTF-8"
)

data$seksyonkominal <- iconv(
  data$seksyonkominal,
  from = "",
  to = "UTF-8"

)

library(gtsummary)

data <- data |>
  mutate(
    finalfts = factor(
      finalfts,
      levels = c(0, 1),
      labels = c("FTS Negative", "FTS Positive")
    )
  )

table_one <- data |> 
  select(seksyonkominal, finalfts) |>
  tbl_summary(by = seksyonkominal) |>
  modify_spanning_header(c("stat_1", "stat_2") ~ "**Num. Total FTS by Seksyonkominal**") |>
  add_overall() |>
  add_p()

saveRDS(
  table_one,
  file = here::here("Output/table_one.rds")
)