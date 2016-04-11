#' Simulated single cell values (phenotypes).
#'
#' A list of the 20000 single cell values (phenotype) of the 1490 individuals described by the variable 'indiv'.
#'
#' @format A list with 1490 item, each item is a vector of 20000 integer
#' @source \url{http://membres-timc.imag.fr/Daniel.Jost/}
"cells"

#' Genotype of the simulated individuals.
#'
#' A matrix whose rows are markers and columns are individuals. The marker 101 corresponds to the 'all' variable of the 'indiv' data frame, it is the parental allele linked with the phenotype. From this marker 101, genotype is propagated (upstream and downstream) with recombination factor of 5%. 
#'
#' @format A matrix with 210 rows and 1490 columns
#' @source \url{http://membres-timc.imag.fr/Daniel.Jost/}
"genodata"

#' Description of the simulated individuals.
#'
#' A data frame that contains the description of the 1490 individuals.
#'
#' @format A data frame with 1490 rows and 8 variables:
#' \describe{
#'   \item{err}{The value of the error introducted in the paramater selection level.}
#'   \item{all}{The parental allele.}
#'   \item{a0}{The a0 parameter value.}
#'   \item{a1}{The a1 parameter value.}
#'   \item{k}{The k parameter value.}
#'   \item{m1}{The first moment of the single cell distribution.}
#'   \item{m2}{The second moment of the single cell distribution.}
#'   \item{m3}{The third moment of the single cell distribution.}
#' }
#' @source \url{http://membres-timc.imag.fr/Daniel.Jost/}
"indiv"
