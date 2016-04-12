# ptldata
A set of data dedicated to the `ptlmapper` R package.

## Description

The `ptldata` package provides a set of data dedicated to the ptlmapper R package. It embeds simulated single cell values (phenotypes), for differents individuals and their genotypes.

## Content of the package

Objects availables in the package are:

  * `indiv` Description of the simulated individuals.
  * `cells` Simulated single cell values (phenotypes).
  * `genodata` Genotype of the simulated individuals.
  
## Installation

To get the current development version from github:

```R
install.packages("devtools")
devtools::install_github("fchuffar/ptldata")
```

## Usage

To learn more about how to use available data, refers to the R package `ptlmapper` vignette: 

```R
devtools::install_github("fchuffar/ptlmapper")
browseVignettes("ptlmapper")
```
