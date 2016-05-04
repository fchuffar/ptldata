# ptldata
A set of data dedicated to the `ptlmapper` R package.

## Description

The `ptldata` package provides a set of data dedicated to the ptlmapper R package. It embeds simulated single cell values (phenotypes), each population of cells belonging to one of a set of individuals, and where the genotype of these individuals is also simulated. See Chuffart et al. PLoS Genetics 2016 for details.

## Content of the package

Objects available in the package are:

  * `indiv` Description of the simulated individuals.
  * `cells` Simulated single cell values (phenotypes).
  * `genodata` Genotypes of the simulated individuals.
  
## Installation

To get the current development version from github:

```R
install.packages("devtools")
devtools::install_github("fchuffar/ptldata")
```

## Usage

To learn more about how to use this data, please refer to the R package `ptlmapper` vignette: 

```R
devtools::install_github("fchuffar/ptlmapper")
browseVignettes("ptlmapper")
```

## Reference

Chuffart F, Richard M, Jost D, Burny C, Duplus-Bottin H, Ohya Y and Yvert G. Exploiting single-cell quantitative data to map genetic variants having probabilistic effects. PLoS Genetics 2016 (in revision)