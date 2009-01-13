################################################################################
##
## $Id: simTrades.class.test.R 1318 2009-01-13 16:39:09Z enos $
##
## Tests the validity function for the simTrades class
##
################################################################################

library(portfolioSim)

## save(test.trades, bad.trades, file = "simTrades.class.test.RData", compress = TRUE)

load("simTrades.class.test.RData")

result <- new("simTrades", period = as.Date("1995-01-01"), trades = test.trades)

stopifnot(
          validObject(result)
          )

trial.0 <- try(
               new("simTrades", period = as.Date("1995-01-01"), trades = bad.trades),
               silent = TRUE
               )

stopifnot(
          inherits(trial.0, "try-error"),
          as.logical(grep("No NAs allowed in trades", trial.0))
          )
