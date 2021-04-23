# Purpose: Getting data from opendatatoronto
# Author: Rachit Srivastava
# Date: April 23, 2021


### Workspace set-up ###
install.packages("opendatatoronto")
library(opendatatoronto)
library(tidyverse)
library(here)

###TTC_data <- 
  ###opendatatoronto::search_packages("TTC Ridership Analysis") %>%
  ###opendatatoronto::list_package_resources() %>%
  ###filter(name == "1985-2019 Analysis of ridership") %>%
  ###get_resource()

TTC_data <- read_csv(here::here("inputs","data","1985-2019-analysis-of-ridership - 1985-2019 ACTUALS.csv"))
