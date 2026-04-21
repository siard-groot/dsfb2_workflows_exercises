### Les 3
## Exercise 3.1
# Spaties, en hoofdletters in de namen.


## Exercise 3.2
# 1.
# Maybe make a duplicate of the excel file and clean it up a bit by removing
# the graphs and moving the metadata to a seperate file so only the relevant
# graph is left

# 2. 
# the third worksheet (all cycles)

# 3.
# Load the file into Rstudio,
# create an object of the file using the read excel function

# 4.
# Make the data tidy by merging all the columns for
# each time into a single column

# 5.
# salmonella_cfu_kinetics_08092020.xlsx


## Exercise 3.3
# A: MD5_exampledata_maybethisone.txt
library(tools)
library(tidyverse)
#library(tools)
mydir <- here::here(
    "data",
    "md5_examples")

filenames <- list.files(myDir, recursive = T)

tools::md5sum(file.path(mydir, filenames)) %>% enframe() -> md5sums_all
md5sums_all$filename <- filenames
md5sums_all %>% select(filename,value)
view(md5sums_all)

## Exercise 3.4
# Caclulate md5sums
md5sums_toxref <- tools::md5sum(
  here::here(
    "data",
    "toxrefdb_nel_lel_noael_loael_summary_AUG2014_FOR_PUBLIC_RELEASE.csv"
  )
) %>% enframe()

md5sums_toxref %>% 
  readr::write_csv(
    here::here(
      "data",
      "toxrefdb_nel_lel_noael_loael_summary_AUG2014_FOR_PUBLIC_RELEASE.md5"
    )
  )

