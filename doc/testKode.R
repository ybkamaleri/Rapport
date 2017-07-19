rm(list = ls())

##=======KONTROLL==============##

## setwd("~/OUS/BDR-test/data")
## filnavn <- "avid.RDS"

RegData <- readRDS("~/Dropbox/OUS/avid/avidata2017juli.Rds")


RegData$test[grepl("registrering", RegData$inn_Type)] <- 1
RegData$test[grepl("rskontroll", RegData$inn_Type)] <- 2

## funker ikke med bare grep
RegData$sykkode[grepl("Ullev", RegData$Sykehus)] <- 1
RegData$sykkode[grepl("Vestfold", RegData$Sykehus)] <- 3
RegData$sykkode[grepl("Nordlandssykehuset", RegData$Sykehus)] <- 4
RegData$sykkode[grepl("lesund", RegData$Sykehus)] <- 6
