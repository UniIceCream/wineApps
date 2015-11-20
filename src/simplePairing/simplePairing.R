###NOLA decision matrix
###16Apr2014 MKLau
###GPLV2

library(devtools)
library(shinyapps)
library(shiny)
shinyapps::setAccountInfo(name='bitecology', token='6AA1D337343DD81FC75261BCB0CB252A', secret='wSQQh2qMiHPYWTNvMBLjW5UDdQ6a3uJ6UzR7h4xt')

### Data set prep

### Testing
runApp()

### Run on shiny.io
shinyapps::deployApp()
shinyapps::terminateApp('simplePairing')
