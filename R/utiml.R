#' utiml: Utilities for Multi-Label Learning
#'
#' The utiml package is a framework for the application of classification
#' algorithms to multi-label data. Like the well known MULAN used with Weka, it
#' provides a set of multi-label procedures such as sampling methods,
#' transformation strategies, threshold functions, pre-processing techniques and
#' evaluation metrics. The package was designed to allow users to easily
#' perform complete multi-label classification experiments in the R environment.
#'
#' Currently, the main methods supported are:
#' \enumerate{
#'  \item{
#'   \strong{Classification methods}:
#'    \code{\link[=baseline]{ML Baselines}},
#'    \code{\link[=br]{Binary Relevance (BR)}},
#'    \code{\link[=brplus]{BR+}},
#'    \code{\link[=cc]{Classifier Chains}},
#'    \code{\link[=clr]{Calibrated Label Ranking (CLR)}},
#'    \code{\link[=ctrl]{ConTRolled Label correlation exploitation (CTRL)}},
#'    \code{\link[=dbr]{Dependent Binary Relevance (DBR)}},
#'    \code{\link[=ebr]{Ensemble of Binary Relevance (EBR)}},
#'    \code{\link[=ecc]{Ensemble of Classifier Chains (ECC)}},
#'    \code{\link[=eps]{Ensemble of Pruned Set (EPS)}},
#'    \code{\link[=homer]{Hierarchy Of Multilabel classifiER (HOMER)}},
#'    \code{\link[=lift]{Label specIfic FeaTures (LIFT)}},
#'    \code{\link[=lp]{Label Powerset (LP)}},
#'    \code{\link[=mbr]{Meta-Binary Relevance (MBR or 2BR)}},
#'    \code{\link[=mlknn]{Multi-label KNN (ML-KNN)}},
#'    \code{\link[=ns]{Nested Stacking (NS)}},
#'    \code{\link[=ppt]{Pruned Problem Transformation (PPT)}},
#'    \code{\link[=prudent]{Pruned and Confident Stacking Approach (Prudent)}},
#'    \code{\link[=ps]{Pruned Set (PS)}},
#'    \code{\link[=rakel]{Random k-labelsets (RAkEL)}},
#'    \code{\link[=rdbr]{Recursive Dependent Binary Relevance (RDBR)}},
#'    \code{\link[=rpc]{Ranking by Pairwise Comparison (RPC)}}
#'  }
#'  \item{
#'   \strong{Evaluation methods}:
#'    \code{\link[=cv]{Performing a cross-validation procedure}},
#'    \code{\link[=multilabel_confusion_matrix]{Confusion Matrix}},
#'    \code{\link[=multilabel_evaluate]{Evaluate}},
#'    \code{\link[=multilabel_measures]{Supported measures}}
#'  }
#'  \item{
#'    \strong{Pre-process utilities}:
#'     \code{\link[=fill_sparse_mldata]{Fill sparse data}},
#'     \code{\link[=normalize_mldata]{Normalize data}},
#'     \code{\link[=remove_attributes]{Remove attributes}},
#'     \code{\link[=remove_labels]{Remove labels}},
#'     \code{\link[=remove_skewness_labels]{Remove skewness labels}},
#'     \code{\link[=remove_unique_attributes]{Remove unique attributes}},
#'     \code{\link[=remove_unlabeled_instances]{Remove unlabeled instances}},
#'     \code{\link[=replace_nominal_attributes]{Replace nominal attributes}}
#' }
#'  \item{
#'   \strong{Sampling methods}:
#'    \code{\link[=create_holdout_partition]{Create holdout partitions}},
#'    \code{\link[=create_kfold_partition]{Create k-fold partitions}},
#'    \code{\link[=create_random_subset]{Create random subset}},
#'    \code{\link[=create_subset]{Create subset}},
#'    \code{\link[=partition_fold]{Partition fold}}
#'  }
#'  \item{
#'    \strong{Threshold methods}:
#'     \code{\link[=fixed_threshold]{Fixed threshold}},
#'     \code{\link[=lcard_threshold]{Cardinality threshold}},
#'     \code{\link[=mcut_threshold]{MCUT}},
#'     \code{\link[=pcut_threshold]{PCUT}},
#'     \code{\link[=rcut_threshold]{RCUT}},
#'     \code{\link[=scut_threshold]{SCUT}},
#'     \code{\link[=subset_correction]{Subset correction}}
#'  }
#' }
#'
#' However, there are other utilities methods not previously cited as
#' \code{\link{as.bipartition}}, \code{\link{as.mlresult}},
#' \code{\link{as.ranking}}, \code{\link{multilabel_prediction}}, etc. More
#' details and examples are available on
#' \href{https://github.com/rivolli/utiml}{utiml repository}.
#'
#' @section Notes:
#'  We use the \code{\link{mldr}} package, to manipulate multi-label data.
#'  See its documentation to more information about handle multi-label dataset.
#'
#' @author
#'  \itemize{
#'    \item Adriano Rivolli <rivolli@@utfpr.edu.br>
#'  }
#'  This package is a result of my PhD at Institute of Mathematics and Computer
#'  Sciences (ICMC) at the University of Sao Paulo, Brazil.
#'
#'  PhD advisor: Andre C. P. L. F. de Carvalho
#'
#' @import mldr
#' @import parallel
#' @import ROCR
#' @importFrom methods is
#' @docType package
#' @name utiml
NULL
