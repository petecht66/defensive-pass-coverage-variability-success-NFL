# pull .csv data set from main
coverageData <- read.csv("https://raw.githubusercontent.com/petecht66/defensive-pass-coverage-variability-success-NFL/refs/heads/main/data/Finalized%20SPAX402%20Project%20Dataset%20for%20R%20Analysis.csv")

# summarize data set and display header names
summary(coverageData)
head(coverageData)

# create simple linear regression
SLRModel <- lm(EPA.Pass ~ Pass.Coverage.Standardized.Entropy, data = coverageData)
summary(SLRModel)