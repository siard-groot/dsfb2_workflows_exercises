# calculate checksums from local file as under (b) and write to file 
# calculate checksums from local file as under (b) and write to file 
# From RSTudio

# load both md5sum files into R
# you could just logically compare the two srings, but is there a better way?
serverside <- read_csv(
  here::here(
    "data",
    "toxrefdb_nel_lel_noael_loael_summary_AUG2014_FOR_PUBLIC_RELEASE.md5"
  )
)

local <- read_lines(
  here::here(
    "data",
    "toxrefdb_nel_lel_noael_loael_summary_AUG2014_FOR_PUBLIC_RELEASE_local.md5"
  )
) %>%
  enframe()


## check equality
serverside$value == local$value[2]