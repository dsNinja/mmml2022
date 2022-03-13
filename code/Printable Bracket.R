# https://github.com/zachmayer/kaggleNCAA
devtools::install_github('zachmayer/kaggleNCAA')

rm(list=ls())

setwd('code')
file = ('submission.csv')
pred = read.csv(file = file, head=TRUE, sep=",")

set.seed(1)
library('kaggleNCAA')
dat <- parseBracket(file, w=0)
sim <- simTourney(dat, 10, progress=TRUE, w=0)
bracket <- extractBracket(sim)
printableBracket(bracket)
