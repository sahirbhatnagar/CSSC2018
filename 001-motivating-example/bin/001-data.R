#########################################################
# R Source code file for loading data
# for 001-motivating-example.Rmd. 
# Hosted on github repo 'sahirbhatnagar/CSSC2018'
# Author: Sahir Bhatnagar
# Created: May 31, 2018
# Updated: 
# Notes: This script contains everything related to data 
# cleaning. In this example, there isn't any cleaning to do
# but the is NEVER the case in real life consulting. 
#########################################################


# Description of variables
# 1. Percent body fat using Method 1: 457/Density - 414.2
# 2. Age (yrs)
# 3. Weight (lbs)
# 4. Height (inches)
# 5. Neck circumference (cm)
# 6. Chest circumference (cm)
# 7. Abdomen circumference (cm) “at the umbilicus and level with the iliac crest”
# 8. Hip circumference (cm)
# 9. Thigh circumference (cm)
# 10. Knee circumference (cm)
# 11 Ankle circumference (cm)
# 12. Extended biceps circumference (cm)
# 13. Forearm circumference (cm)
# 14. Wrist circumference (cm) “distal to the styloid processes”
#######################################################################

## ---- import-data ----

DT <- data.table::fread(paste0(data_path,"fat-data.csv"))

## ---- other-data-cleaning ----

