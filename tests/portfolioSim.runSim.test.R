################################################################################
##
## $Id: portfolioSim.runSim.test.R 1226 2007-10-01 18:29:22Z enos $
##
## Tests the runSim method of the portfolioSim class
##
################################################################################

library(portfolioSim)

## save(sim.trades.list, test.ps.0, test.ps.1, truth.0, truth.1, file = "portfolioSim.runSim.test.RData", compress = TRUE)

load("portfolioSim.runSim.test.RData")
         
stiPt <- new("stiPresetTrades", periods = c(1,2), sim.trades = sim.trades.list)

test.ps.0@trades.interface <- stiPt
test.ps.1@trades.interface <- stiPt

## Remove the out.loc directory:

unlink("portfolioSim.runSim.test", recursive = TRUE)

## Standard simulation

result.0 <- runSim(test.ps.0, verbose = FALSE)

stopifnot(all.equal(result.0, truth.0))

## Simulation with missing prices and stocks no longer in universe

result.1 <- runSim(test.ps.1, verbose = FALSE)

stopifnot(all.equal(result.1, truth.1))

