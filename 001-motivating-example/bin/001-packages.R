#########################################################
# R Source code file for required packages
# for 001-motivating-example.Rmd. 
# Hosted on github repo 'sahirbhatnagar/CSSC2018'
# Author: Sahir Bhatnagar
# Created: May 31, 2018
# Updated: 
# Notes: we use pacman to install packages. p_load will
# check if the package is installed, install and load it
#########################################################

## ----required-packages ----

if (!require("pacman")) install.packages("pacman")

pacman::p_load(knitr)
pacman::p_load(data.table)
pacman::p_load(sjPlot)
pacman::p_load(car)
