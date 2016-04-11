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

To launch available data from `ptldata`:

```R
library(ptldata)
head(indiv)
#'   err all   a0     a1      k      m1       m2        m3
#' 1   0   1 0.10 10.000  1.585 9.47030 14.39262 -19.13267
#' 2   0   1 0.10 10.000  1.585 9.45060 14.35746 -19.63850
#' 3   0   3 6.31 12.589 10.000 8.52445 15.40260  36.62112
#' 4   0   1 0.10 10.000  1.585 9.48650 13.99582 -17.16564
#' 6   0   1 0.10 10.000  1.585 9.49615 14.52349 -18.17027
#' 7   0   3 6.31 12.589 10.000 8.54925 15.53627  37.00036
> length(cells)
#' [1] 1490
head(genodata[,1:12])
#'   seg_1 seg_2 seg_3 seg_4 seg_5 seg_6 seg_7 seg_8 seg_9 seg_10 seg_11 seg_12
#' 1     1     0     0     1     0     0     0     0     0      0      1      0
#' 2     1     0     0     1     0     0     0     0     0      0      1      0
#' 3     1     0     0     1     0     1     0     0     0      0      1      0
#' 4     1     0     0     1     0     1     0     0     0      0      0      0
#' 5     1     0     0     0     0     1     0     0     0      0      0      0
#' 6     1     0     0     0     0     1     0     0     0      0      0      0
tail(genodata[,1:12])
#'     seg_1 seg_2 seg_3 seg_4 seg_5 seg_6 seg_7 seg_8 seg_9 seg_10 seg_11 seg_12
#' 196     0     1     1     0     1     1     0     0     0      0      1      0
#' 197     0     1     1     0     1     1     0     0     0      0      1      0
#' 198     0     1     1     0     1     1     0     0     0      0      1      0
#' 199     0     1     1     0     1     1     0     0     0      0      1      1
#' 200     0     1     1     0     1     1     0     0     0      0      1      1
#' 201     0     1     1     0     1     1     0     0     0      0      1      1
```

## Documentation

### Simulated single cell values (phenotypes).

Description:

     A list of the 20000 single cell values (phenotype) of the 1490
     individuals described by the variable 'indiv'.

Usage:

     cells
     
Format:

     A list with 1490 item, each item is a vector of 20000 integer

Source:

     <URL: http://membres-timc.imag.fr/Daniel.Jost/>

### Genotype of the simulated individuals.

Description:

     A matrix whose rows are markers and columns are individuals. The
     marker 101 corresponds to the 'all' variable of the 'indiv' data
     frame, it is the parental allele linked with the phenotype. From
     this marker 101, genotype is propagated (upstream and downstream)
     with recombination factor of 5

Usage:

     genodata
     
Format:

     A matrix with 210 rows and 1490 columns

Source:

     <URL: http://membres-timc.imag.fr/Daniel.Jost/>

### Description of the simulated individuals.

Description:

     A data frame that contains the description of the 1490
     individuals.

Usage:

     indiv
     
Format:

     A data frame with 1490 rows and 8 variables:

     err The value of the error introducted in the paramater selection
          level.

     all The parental allele.

     a0 The a0 parameter value.

     a1 The a1 parameter value.

     k The k parameter value.

     m1 The first moment of the single cell distribution.

     m2 The second moment of the single cell distribution.

     m3 The third moment of the single cell distribution.

Source:

     <URL: http://membres-timc.imag.fr/Daniel.Jost/>