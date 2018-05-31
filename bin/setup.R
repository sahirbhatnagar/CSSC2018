#########################################################
# R Source code file for installing required packages
# for CSSC2018
# Author: Sahir Bhatnagar
# Created: May 25, 2018
# Updated: 
# Notes: we use pacman to install packages. p_load will
# check if the package is installed, install and load it
#########################################################

install.packages("pacman")
pacman::p_load(knitr, rmarkdown, pander, ggplot2, cowplot, simulator, glmnet,
               data.table, dplyr, car, MASS, xtable, sjPlot)
pacman::p_load_gh('rstudio/blogdown')
blogdown::install_hugo(force = TRUE)