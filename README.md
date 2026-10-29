---
title: Final Project 4
author: Hannah Lawinger
output: github_document
---

# Final dataset
`Raw_data/Limonade_EMS_all.csv`
- final clean dataset used for analyses

---------------------------------------------------------------------------------

# Code description
`Code/1_make_table1.R`
- reads in the final dataset from `Raw_data/Limonade_EMS_all` and produces table one
- saves table one as a `.rds` object in `Output/` folder

`Code/2_make_figure1.R`
- reads in the final dataset from `Raw_data/Limonade_EMS_all` and produces figure one
- saves figure one as a `.png` object in `Output/` folder

`Final_Project_2.Rmd`
- loads the dataset and produces an html file using the two `.R` scripts
- makes table one and figure one

`Makefile`
- produces an html file using the `Final_Project_2.Rmd` file and `Output/` files

---------------------------------------------------------------------------------

# Final report
- run the final report using make which pulls code from the `Makefile`

