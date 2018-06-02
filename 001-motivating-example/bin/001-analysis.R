#########################################################
# R Source code file for analysis
# for 001-motivating-example.Rmd. 
# Hosted on github repo 'sahirbhatnagar/CSSC2018'
# Author: Sahir Bhatnagar
# Created: May 31, 2018
# Updated: 
# Notes: 
#########################################################


## ---- pairs ----
graphics::pairs(~ pbf1 + age + weight + neck + abdomen + forearm + 
                  wrist, data = DT, main = "Simple Scatterplot Matrix of Fat data")

## ---- fit1 ----
fit1 <- lm(pbf1 ~ ., data = DT)

## ---- fit1-coef ----
# print results to a table
sjPlot::sjt.lm(fit1, depvar.labels = "Percentage Body Fat")

## ---- fit1-plot ----
# plot coefficients
sjPlot::set_theme("forest",
                  axis.title.size = .85, 
                  axis.textsize = .85, 
                  legend.size = .8, 
                  geom.label.size = 3.5)
sjPlot::sjp.lm(fit1, 
               show.summary = T)


## ---- diagnostics ----
sjPlot::sjp.lm(fit1, type = "ma")

## ---- influence-plot ----
car::influencePlot(fit1)


## ---- fit2 ----
DT2 <- DT[-c(42), , ]
fit2 <- lm(pbf1~., data = DT2)


## ---- compare-fits ----
sjPlot::sjt.lm(fit1, fit2, 
               depvar.labels = c("With obs. 42","Without obs. 42"),
               separate.ci.col = FALSE, # ci in same cell as estimates
               p.numeric = FALSE)

