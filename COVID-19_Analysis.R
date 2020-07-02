#used library
library(covid19.analytics)

# for aggregated data
ag <- covid19.data(case = 'aggregated')

#for time series data
tsd <- covid19.data(case = 'ts-ALL')

#for time series confirmed data
tsc <- covid19.data(case = 'ts-confirmed')
tsa <- covid19.data(case = 'ts-ALL')


#fetchung report in summarized form
report.summary(Nentries = 5, graphical.output = T)


#data of a particular country
tots.per.location(tsc, geo.loc = 'Germany')


#growth rate of countires
growth.rate(tsc, geo.loc = 'Germany')
growth.rate(tsc, geo.loc = 'US')

#for output in 3D globe formag
totals.plt(ts)
live.map(tsc)


#sir Model analysis
generate.SIR.model(tsc, 'Germany', tot.population = 83000000)
generate.SIR.model(tsc, 'Russia', tot.population = 144500000)
