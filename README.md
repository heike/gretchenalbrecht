---
title: "gretchenalbrecht"
author: "Dianne Cook"
date: "December 14, 2017"
output: 
  html_document:
    keep_md: true
---




This package is a set of palettes for R based on the work of New Zealand expressionist painter [Gretchen Albrecht](https://en.wikipedia.org/wiki/Gretchen_Albrecht). To install the package run:

```
devtools::install_github("dicook/gretchenalbrecht")
```

and to try it out:


```r
library(ggplot2)
library(gretchenalbrecht)
library(ggthemes)

data(nz_cart_census)
ggplot(nz_cart_census, aes(x=long, y=lat, group=group,
 fill=MedianIncome2013)) +
 scale_fill_gretchenalbrecht(palette="winter_light",
                             discrete=FALSE) +
 geom_polygon() + theme_map() + theme(legend.position="right")
```

![](README_files/figure-html/unnamed-chunk-1-1.png)<!-- -->

Available palettes at the moment are:


```r
names(gretchenalbrecht_palettes)
```

```
## [1] "rocker"               "black_plain"          "flood_tide"          
## [4] "last_rays"            "red_sky_golden_cloud" "winged_spill"        
## [7] "pink_cloud"           "winter_light"
```
