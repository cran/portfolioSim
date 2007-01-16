################################################################################
##
## $Id: stiPresetTrades.R 367 2006-10-03 15:13:39Z enos $
##
## Methods for class stiPresetTrades
##
################################################################################


setMethod("getSimTrades",
          signature(object = "stiPresetTrades",
                    period = "orderable",
                    holdings = "portfolio",
                    sim.data = "simData",
                    verbose = "logical"),
          function(object, period, holdings, sim.data, verbose){
            if(period %in% object@periods){                         
              trades <- object@sim.trades[object@periods == period][[1]]
            }
            else{
              trades <- new("trades")
            }

            return(new("simTrades", period = period, trades = trades))
          
          }
          )
