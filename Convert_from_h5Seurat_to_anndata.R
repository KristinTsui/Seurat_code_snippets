
#install seuratData from git hub
devtools::install_github('satijalab/seurat-data')

if (!requireNamespace("remotes", quietly = TRUE)) {
  install.packages("remotes")
}

# install SeuratDisk from github since it is not available on CRAN
remotes::install_github("mojaveazure/seurat-disk")


library(Seurat)
library(SeuratData)
library(SeuratDisk)
SaveH5Seurat(Tcell_singleR, filename = "Tcell_singleR.h5Seurat")
Convert("Tcell_singleR.h5Seurat", dest = "h5ad")
