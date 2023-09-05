[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![Build Status](https://travis-ci.org/poldham/underwater.svg?branch=master)](https://travis-ci.org/poldham/underwater)
[![codecov](https://codecov.io/gh/poldham/underwater/branch/master/graph/badge.svg)](https://codecov.io/gh/poldham/underwater)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/underwater)](https://cran.r-project.org/package=underwater)
[![packageversion](https://img.shields.io/badge/Package%20version-0.1.0-orange.svg?style=flat-square)](commits/master)
"[![minimal R version](https://img.shields.io/badge/R%3E%3D-3.0.3-6666ff.svg)](https://cran.r-project.org/)"
[![DOI](https://zenodo.org/badge/120892550.svg)](https://zenodo.org/badge/latestdoi/120892550)

The `underwater` R data package brings together datasets for submerged geographic features and place names that are presently dispersed. The aim of the package is to facilitate mapping and text mining of scientific and other literature for underwater features and place names using a tidy approach. 

The package aims to assist researchers seeking to contribute to the evidence base for negotiations of a new international treaty on marine biodiversity in Areas Beyond National Jurisdiction (ABNJ) under the United Nations General Assembly. 

The package provides open access datasets for named underwater places from:

1. The [GEBCO Gazeteer](https://www.gebco.net/data_and_products/undersea_feature_names/) with 4,084 place and feature names.
2. The [Interridge Hydrothermal Vents Database](https://vents-data.interridge.org/) with 700 hydrothermal vents.
3. Underwater features from the [Geonames database](http://www.geonames.org/export/) coded U for Undersea. This dataset contains 14,513 underwater place names.
4. Named seamounts from Seamounts Online [http://seamounts.sdsc.edu/](http://seamounts.sdsc.edu/)

### Funding 

The first version of the underwater package was written as part of the BIOSPOLAR project funded by the Norwegian Research Council (RCN 257631/E10) which aimed to map research and innovation in polar marine areas. The second edition of the package was written as part of the European Commission funded 'Study on Marine Genetic Resources Market Value and State of the Art of Commercialisation of Related Products in the Context of the BBNJ Negotiations'. The views expressed in the package are strictly the authors own and should not be attributed to the Norwegian Research Council or the European Commission. 

The package is made available under the MIT Licence (CHANGE TO CC-BY)

ADD SUGGESTED CITATION

### Installing

`underwater` is not on CRAN and can be installed with devtools

```{r}
install.packages("devtools")
devtools::install_github("poldham/underwater")
```

### The datasets 

The datasets have different update schedules and an archive of each dataset is provided in `/data` and can be called with the package. 

1. The GEBCO Gazeteer is rarely updated. The package archives a version of the dataset from 2023-07-17 and can be called using `underwater::gebco` or data("gebco").

```{r}
gebco <- underwater::gebco
```

2. The Interridge Hydrothermal vents database is updated infrequently. An archived version can be accessed using `underwater::vents` or data("vents"). 

```{r}
vents <- underwater::vents
```

3. The Geonames `undersea` data is taken from the Geonames `allCountries.txt` file [data export dump](http://download.geonames.org/export/dump/) and filtered on code U for Undersea (undersea). The geonames export files are updated daily. A reference set from 2018-01-01 is provided with the package. The geonames data can be accessed using `underwater::undersea` or data("undersea").

```{r}
undersea <- underwater::undersea
```
The raw data is not provided in a form that makes text mining easy. The data is not tidy and may contain punctuation or concatenation of names. Alternate names may also be provided. 

Note that geographic lat long coordinates are provided in the vents and the geonames dataset. GEBCO data includes Point, Linestring and Polygons. 

If you know of an open access dataset that could be added to aid in underwater mapping projects please raise an issue or make a pull request. Here are some of the other packages I have found so far. 

4. Seamounts

Seamounts data is from seamounts online at [http://seamounts.sdsc.edu/](http://seamounts.sdsc.edu/) which is discontinued due to lack of funding). A set of zip files are provided and stored in `data-raw` as is. The Seamounts Online dataset was coordinated by Karen Stocks at the Scripps Institution of Oceanography and we are grateful to her and contributing colleagues for this valuable resource.

```{r}
seamounts <- underwater::seamounts
```

### Other R packages dealing with Ocean data

- [`robis`](https://github.com/iobis/robis) for taxonomic data from the Ocean Biogeographic Information System
- [`oce`](https://github.com/dankelley/oce) for working with instrument data and a variety of mapping functions
- [`oceanview`](https://github.com/cran/OceanView) for visualizing complex oceanographic data
- [`oceanmap`](https://github.com/cran/oceanmap) A toolbox for plotting 2D oceanographic data
- [`rnaturalearth`](https://github.com/ropenscilabs/rnaturalearth) A package to facilitate interaction with natural earth map data
- [`rnaturalearthdata`](https://github.com/ropenscilabs/rnaturalearthdata) World Vector Map Data from Natural Earch used in rnaturalearth

### Other data sources

[Marineregions.org](http://www.marineregions.org/downloads.php) brings together a lot of GIS datasets (such as maritime boundaries) that can use useful for mapping in R and other tools. 

[Quantarctica3](https://www.scar.org/general-scar-news/quantarctica3/) is a resource for those interested in Antarctica and the southern ocean and provides resources for use with QGIS. 