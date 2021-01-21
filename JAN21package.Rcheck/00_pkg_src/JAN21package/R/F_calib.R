
#' The function calib
#'
#'Gives coefficients for calcibration curve
#'
#'Some more details here
#'
#'@param conc is a numeric vector with cocnentrations
#'@param OD is a vector with ODs
#'@param ... currently disregarded
#'@return the coefficients of the calibration model
#'@examples
#'conc <-1:10
#'OD<-1:10 + rnorm(10)
#'calib(conc,OD)
#'@importFrom stats lm
#'@export
calib <- function (conc,OD){
  tmp <-data.frame(conc,OD)
  lm(conc~OD,data=tmp)
}
