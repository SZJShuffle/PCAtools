% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/findElbowPoint.R
\name{findElbowPoint}
\alias{findElbowPoint}
\title{Find the elbow point in the curve of variance explained by each successive PC. This can be used to determine the number of PCs to retain.}
\usage{
findElbowPoint(variance)
}
\arguments{
\item{variance}{Numeric vector containing the variance explained by each PC.
Should be monotonic decreasing.}
}
\value{
An integer scalar specifying the number of PCs at the elbow point.
}
\description{
Find the elbow point in the curve of variance explained by each successive PC. This can be used to determine the number of PCs to retain.
}
\details{
Find the elbow point in the curve of variance explained by each successive PC. This can be used to determine the number of PCs to retain.
}
\examples{
  col <- 20
  row <- 1000
  mat <- matrix(rexp(col*row, rate = 1), ncol = col)

  # Adding some structure to make it more interesting.
  mat[1:100,1:3] <- mat[1:100,1:3] + 5
  mat[1:100+100,3:6] <- mat[1:100+100,3:6] + 5
  mat[1:100+200,7:10] <- mat[1:100+200,7:10] + 5
  mat[1:100+300,11:15] <- mat[1:100+300,11:15] + 5

  p <- pca(mat)
  chosen <- findElbowPoint(p$variance)

  plot(p$variance)
  abline(v=chosen, col="red")

}
\author{
Aaron Lun
}
