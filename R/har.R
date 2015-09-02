#' Human Activity Recognition Project data
#'
#' All columns labeled [x|y|z][1-4] indicate acceleration in the indicated
#' dimension as measured by an accelerometer. Accelerometer 1 is mounted on the
#' waist, accelerometer 2 is mounted on the left thight, accelerometer 3 is
#' mounted on the right ankle, and accelerometer 4 is mounted on the right
#' upper-arm.
#'
#' @source Human Activity Recognition Project,
#'  \url{http://groupware.les.inf.puc-rio.br/har#ixzz2PyRdbAfA}
#' @format Data frame with columns
#' \describe{
#' \item{user}{character Name of study participant}
#' \item{gender}{character Gender of study participant}
#' \item{age}{integer}
#' \item{how_tall_in_meters}{numeric}
#' \item{weight}{integer}
#' \item{body_mass_index}{numeric}
#' \item{x1}{integer}
#' \item{y1}{integer}
#' \item{z1}{integer}
#' \item{x2}{integer}
#' \item{y2}{integer}
#' \item{z2}{integer}
#' \item{x3}{integer}
#' \item{y3}{integer}
#' \item{z3}{integer}
#' \item{x4}{integer}
#' \item{y4}{integer}
#' \item{z4}{integer}
#' \item{class}{factor w/ levels sitting, standing, walking, sittingdown, standingup}
#' }
#' @examples
#'   data(har)
"har"