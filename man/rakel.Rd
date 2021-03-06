% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/method_rakel.R
\name{rakel}
\alias{rakel}
\title{Random k-labelsets for multilabel classification}
\usage{
rakel(
  mdata,
  base.algorithm = getOption("utiml.base.algorithm", "SVM"),
  k = 3,
  m = 2 * mdata$measures$num.labels,
  overlapping = TRUE,
  ...,
  cores = getOption("utiml.cores", 1),
  seed = getOption("utiml.seed", NA)
)
}
\arguments{
\item{mdata}{A mldr dataset used to train the binary models.}

\item{base.algorithm}{A string with the name of the base algorithm. (Default:
\code{options("utiml.base.algorithm", "SVM")})}

\item{k}{The number of labels used in each labelset. (Default: \code{3})}

\item{m}{The number of LP models. Used when overlapping is TRUE, otherwise it
is ignored. (Default: \code{2 * length(labels)})}

\item{overlapping}{Logical value, that defines if the method must overlapping
the labelsets. If FALSE the method uses disjoint labelsets.
(Default: \code{TRUE})}

\item{...}{Others arguments passed to the base algorithm for all subproblems.}

\item{cores}{The number of cores to parallelize the training. Values higher
than 1 require the \pkg{parallel} package. (Default:
\code{options("utiml.cores", 1)})}

\item{seed}{An optional integer used to set the seed. This is useful when
the method is run in parallel. (Default: \code{options("utiml.seed", NA)})}
}
\value{
An object of class \code{RAkELmodel} containing the set of fitted
  models, including:
  \describe{
   \item{labels}{A vector with the label names.}
   \item{labelsets}{A list with the labelsets used to build the LP models.}
   \item{model}{A list of the generated models, named by the label names.}
  }
}
\description{
Create a RAkEL model for multilabel classification.
}
\details{
RAndom k labELsets is an ensemble of LP models where each classifier is
trained with a small set of labels, called labelset. Two different strategies
for constructing the labelsets are the disjoint and overlapping labelsets.
}
\examples{
model <- rakel(toyml, "RANDOM")
pred <- predict(model, toyml)
\dontrun{
## SVM using k = 4 and m = 100
model <- rakel(toyml, "SVM", k=4, m=100)

## Random Forest using disjoint labelsets
model <- rakel(toyml, "RF", overlapping=FALSE)
}
}
\references{
Tsoumakas, G., Katakis, I., & Vlahavas, I. (2011). Random k-labelsets for
 multilabel classification. IEEE Transactions on Knowledge and Data
 Engineering, 23(7), 1079-1089.
}
\seealso{
Other Transformation methods: 
\code{\link{brplus}()},
\code{\link{br}()},
\code{\link{cc}()},
\code{\link{clr}()},
\code{\link{ctrl}()},
\code{\link{dbr}()},
\code{\link{ebr}()},
\code{\link{ecc}()},
\code{\link{eps}()},
\code{\link{esl}()},
\code{\link{homer}()},
\code{\link{lift}()},
\code{\link{lp}()},
\code{\link{mbr}()},
\code{\link{ns}()},
\code{\link{ppt}()},
\code{\link{prudent}()},
\code{\link{ps}()},
\code{\link{rdbr}()},
\code{\link{rpc}()}

Other Powerset: 
\code{\link{eps}()},
\code{\link{lp}()},
\code{\link{ppt}()},
\code{\link{ps}()}
}
\concept{Powerset}
\concept{Transformation methods}
