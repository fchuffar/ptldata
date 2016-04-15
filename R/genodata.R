#' A Function That Generates a Genome.
#'
#' This function generates a genome around significant parental alleles.
#' @param alleles A vector that describes significant parental alleles (those that will control your phenotype
#' @param half_chr_width An integer that defines the length of the (half (chromosome size minus 1)). 
#' @param teta An interger that specify recombination factor to use.
#' @examples
#' alleles = sample(c("BY","RM"), 25, replace=TRUE)
#' print(alleles)
#' genodata = generate_genodata(alleles, half_chr_width=50)
#' print(genodata)
#' tetas = compute_teta(genodata)
#' # matlab::imagesc(t(as.matrix(genodata)), xlab="markers", 
#' #   ylab="segrgants", main="Parental origin of segregant genomes")
#' plot(density(tetas), main=paste("Recombination Fraction Distribution"), 
#'   xlab=paste("mean(teta)=", signif(mean(tetas),3), sep=""))
#' abline(v=mean(tetas), lty=2)
#' @export
generate_genodata = function(alleles, half_chr_width = 100, teta=0.05) {
  nb_indiv = length(alleles)
  chr_w = 2 * half_chr_width + 1

  alleles = as.numeric(as.factor(alleles))
  all_ref = 1
  all = (alleles == all_ref) + 1 %% 2
  g = matrix(rep(0,nb_indiv*chr_w), nb_indiv)
  g[, half_chr_width + 1] = (all==1)
  for(i in (half_chr_width + 2):chr_w) {
    g[, i] = (g[, i-1] + (runif(nb_indiv) < teta)) %% 2   
  }
  for(i in (half_chr_width):1) {
    g[, i] = (g[, i+1] + (runif(nb_indiv) < teta)) %% 2   
  }
  genome_matrix = g
  genodata = data.frame(t(genome_matrix))
  names(genodata) = paste("seg", 1:nb_indiv, sep="_")
  genodata + genodata + 1
  return(genodata)
}

#' A Function That Computes Recombination Factors.
#'
#' This function computes recombination factors between markers.
#' @param genodata A genome generated with the function `generate_genodata`
#' @export
compute_teta = function(genodata) {
  genome_matrix = t(as.matrix(genodata))
  tetas = apply(genome_matrix[,-1] != genome_matrix[,-ncol(genome_matrix)], 2, sum) / nrow(genome_matrix)
  return(tetas)  
}


#' A Function Used to Export Data.
#'
#' This function was used to export data.
export_data = function() {
  simdata_geno_pheno_filename = paste("~/Desktop/LBMC/projects/scptl/results/20150703/cache/simdata_geno_pheno.RData")
  load(simdata_geno_pheno_filename)

  # indiv
  head(indiv)
  indiv = indiv[,1:8]
  indiv$all = as.numeric(as.factor(indiv$all))
  head(indiv)
  rownames(indiv) = colnames(genodata)
  head(indiv)

  # cells
  names(cells) = colnames(genodata)

  # genodata
  rownames(genodata) = paste("marker", 1:nrow(genodata), sep="_")
  genodata = genodata + 1

  # check
  sum(indiv$all!=genodata[101,] )
  
  save(cells, file="/Users/florent/projects/ptldata/data/cells.RData", compress="xz")
  save(genodata, file="/Users/florent/projects/ptldata/data/genodata.RData", compress="bzip2")
  save(indiv, file="/Users/florent/projects/ptldata/data/indiv.RData", compress="xz")

  # devtools::document(); devtools::install(); devtools::check()
}