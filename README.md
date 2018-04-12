# Having an Online Presence: Tools for Reproducible and Rapid Dissemination of Research

A workshop presented by [Sahir Bhatnagar](http://sahirbhatnagar.com/) (McGill University) at the [6th Annual Canadian Statistics Student Conference - Montr&eacute;al, QC](https://ssc.ca/en/meeting/sixth-annual-canadian-statistics-student-conference)


## Details

**Date**: Saturday, June 2, 2018  
**Location**: [McGill University](http://www.mcgill.ca/)  
**Slides**: TBA  
**Material**: Click on the `Download ZIP` button on this page, or [fork it](https://help.github.com/articles/fork-a-repo/), or [clone it](http://stackoverflow.com/questions/651038/how-do-you-clone-a-git-repository-into-a-specific-folder)  


## Abstract

With the ever increasing size of data and complexity of methods required to analyze them, the reproducibility of results is necessary to ensure a high quality of scientific research. At the same time, there has been a shift in the way research is disseminated. Preprint servers, blogs, GitHub and Twitter are free platforms that significantly reduce publication time enabling researchers to rapidly share ideas, generate discussion, publish code and promote their work. In this workshop I will introduce the essential tools of a reproducible workflow. Starting from a raw dataset, you will learn how to structure your analysis scripts, create dynamic documents using Rmarkdown and keep track of the changes to the analysis through version control with Git. You will then create a website and publish your results online in the form of a blog post. This workshop will be 100% interactive.


## Requirements

Participants must bring their own laptops, with the following programs and packages installed (all are free):

* [R (version $\geq$ 3.4.1)](http://cran.r-project.org/)
* [RStudio (version $\geq$ 1.1.442)](http://www.rstudio.com/products/rstudio/download/preview/)  
* [Git](https://git-scm.com/downloads)
* [Sign up for a GitHub Account](https://github.com/)
* Run the following commands in `R` for required packages:

```R
install.packages("pacman")
pacman::p_load(knitr, rmarkdown, pander, ggplot2, cowplot)
pacman::p_load_gh('rstudio/blogdown')
blogdown::install_hugo(force=TRUE)
```


----

## Reproducible Examples

All the examples in this repository are reproducible. To compile please follow these instructions:

1. For a given directory, open the associated `.Rproj` file in RStudio
2. Open the `.Rnw` corresponding to the name of the folder
3. In RStudio, make sure files are weaved using `knitr` (Tools -> Global Options -> Sweave -> Weave .Rnw files using: select knitr in the dropdown menu)
4. In RStudio, click on `Compile PDF` or in the `R` console enter `knitr::knit2pdf("*.Rnw")` where * is the name of the `.Rnw` to compile

----

## How Does it work?

* In each of the folders there is a `packages.R` file, which automatically tests for required packages, and install them if they are missing from your library
* There is no need to set any working directories, since you have opened the `.Rproj` file
* To be able to compile the [slides](https://github.com/sahirbhatnagar/knitr-tutorial/tree/master/slides), you need to have a Perl interpreter installed. If you do not have one, simply comment out `knit_hooks$set(crop = hook_pdfcrop)` in the setup chunk of the [`mcgill-knitr.Rnw`](https://github.com/sahirbhatnagar/knitr-tutorial/blob/master/slides/mcgill-knitr.Rnw) file




----

## References

### Books

* [Reproducible research with R and RStudio](http://www.amazon.com/exec/obidos/ASIN/1466572841/7210-20)
* [Dynamic documents with R and knitr](http://www.amazon.com/exec/obidos/ASIN/1482203537/7210-20)


### Websites

* [CRAN Reproducible Research Task View](http://cran.r-project.org/web/views/ReproducibleResearch.html)
* [knitr chunk options](http://yihui.name/knitr/options/)
* [Markdown](http://daringfireball.net/projects/markdown/syntax)
* [RMarkdown](http://rmarkdown.rstudio.com/)
* [WYSIWYG editor for markdown](http://socrates.io/)
* [Vanderbilt University](http://biostat.mc.vanderbilt.edu/wiki/Main/KnitrHowto)
* [Jennifer Bryan (UBC)](https://github.com/jennybc/2015-02-23_bryan-fields-talk)
* [Data Science with R by Graham Williams](http://handsondatascience.com/KnitRO.pdf)
* [knitr showcase](http://yihui.name/knitr/demo/showcase/)
* [Karl Broman's Tools for RR](http://kbroman.org/Tools4RR/)
* [Editors for knitr](http://yihui.name/knitr/demo/editors/)
* [What is an R-Project?](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects)

### En fran&ccedil;ais
* [knitr: Produire des documents dynamiques](http://rug.mnhn.fr/semin-r/PDF/semin-R_knitr_PBessonneau_240513.pdf)
* [&Eacute;laboration et conversion de documents avec Markdown et Pandoc](http://enacit1.epfl.ch/markdown-pandoc/)
* [Le langage R Markdown](https://www.france-universite-numerique-mooc.fr/c4x/UPSUD/42001S02/asset/RMarkdown.pdf)
* [Un guide pour bien commencer avec markdown](http://blog.wax-o.com/2014/04/tutoriel-un-guide-pour-bien-commencer-avec-markdown/)


----

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>
