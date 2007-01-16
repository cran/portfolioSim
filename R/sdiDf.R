################################################################################
##
## $Id: sdiDf.R 367 2006-10-03 15:13:39Z enos $
##
## Market data interface implementation that returns market data
## input objects from subsets of a larger data frame.
##
################################################################################

setMethod("getSimData",
          signature(object = "sdiDf", period = "orderable", verbose = "logical"),
          function(object, period, verbose){

            stopifnot(length(period) == 1)
            stopifnot("period" %in% names(object@data))
            
            ## Create a new, empty input object

            data <- object@data[object@data$period == period,]
            input <- new("simData", data = data)

            invisible(input)
            
          }
          )
