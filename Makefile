Final_Project_2.html: Final_Project_2.Rmd Output/table_one.rds Output/figure1.png
	Rscript -e "rmarkdown::render('Final_Project_2.Rmd')"

Output/table_one.rds: Code/1_make_table1.R Raw_data/Limonade_EMS_all.csv
	Rscript Code/1_make_table1.R

Output/figure1.png: Code/2_make_figure1.R Raw_data/Limonade_EMS_all.csv
	Rscript Code/2_make_figure1.R


.PHONY: clean
clean: 
	rm -f Output/*.rds && rm -f Output/*.png && rm -f *.html