# Final Project 4

**Author:** Hannah Lawinger

## Project Overview

This project analyzes the Limonade EMS dataset and produces a descriptive table (Table 1), a figure (Figure 1), and a final HTML report. The analysis is automated using R scripts and a `Makefile`.

## Dataset

**File:** `Raw_data/Limonade_EMS_all.csv`

This is the final cleaned dataset used for all analyses in the project.

## Code and File Descriptions

| File | Description |
|---|---|
| `Code/1_make_table1.R` | Reads the final dataset and generates Table 1. Saves the table as an `.rds` file in the `Output/` directory. |
| `Code/2_make_figure1.R` | Reads the final dataset and generates Figure 1. Saves the figure as a `.png` file in the `Output/` directory. |
| `Final_Project_2.Rmd` | Loads the dataset and incorporates Table 1 and Figure 1 to generate the final report. |
| `Makefile` | Automates the report-generation workflow by running the necessary commands and using the output files. |

## Generating the Final Report

To generate the final HTML report, run `make` from the project directory in a terminal.

The `Makefile` executes the report-generation workflow using `Final_Project_2.Rmd` and the required output files.

## Project Outputs

The project generates the following files in the `Output/` directory:

- **Table 1:** An `.rds` file containing the descriptive table.
- **Figure 1:** A `.png` image of the figure.

The final report is generated as an HTML file in the project directory.

