################################################################################
##
## $Id: AllGenerics.R 1318 2009-01-13 16:39:09Z enos $
##
## Generics for the portfolioSim package.
##
################################################################################

## Should I check for existing generics like we do in 'portfolio'?

setGeneric("getSimData",
           function(object, period, verbose, ...) standardGeneric("getSimData"),
           valueClass = "simData")

setGeneric("getSimTrades",
           function(object, period, holdings, sim.data, verbose, ...) standardGeneric("getSimTrades"),
           valueClass = "simTrades")



setGeneric("runSim",
           function(object, verbose, ...) standardGeneric("runSim"),
           valueClass = "simResult")

setGeneric("saveOut",
           function(object, type, fmt, out.loc, name, verbose, ...) standardGeneric("saveOut"))

setGeneric("loadIn",
           function(object, in.loc, fmt, ...) standardGeneric("loadIn"))

## Utility

setGeneric("perfSummaryDf",
           function(object, ...) standardGeneric("perfSummaryDf"))

setGeneric("securityPerfSummaryDf",
           function(object, ...) standardGeneric("securityPerfSummaryDf"))

setGeneric("contributionSummaryDf",
           function(object, ...) standardGeneric("contributionSummaryDf"))
