# Purpose: Getting data from opendatatoronto
# Author: Rachit Srivastava
# Date: April 23, 2021


### Workspace set-up ###
install.packages("opendatatoronto")
library(opendatatoronto)
library(tidyverse)

TTC_data <- 
  opendatatoronto::search_packages("TTC Ridership Analysis") %>%
  opendatatoronto::list_package_resources() %>%
  filter(name == "1985-2019 Analysis of ridership") %>%
  get_resource()
