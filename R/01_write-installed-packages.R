## deja vu from yesterday!

## create a data frame of your installed packages

library(fs)
library(tidyverse)
library(magrittr)
library(here)
path_real(.Library)

lib <- installed.packages() %>%
  as_tibble()

## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

lib %<>%  select(Package, LibPath, Version, Priority, Built)

## write it to data/installed-packages.csv
lib %>%
write_csv(here("data", "installed-packages.csv"), na = "")


## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like

## when this script works, stage & commit it and the csv file
## PUSH!
