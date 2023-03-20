library(tidyverse)

# create vector of crop type
possible_crop <- c('wheat', 'corn', 'barley')
# use sample to simulate a random recording of fields for analysis
possible_crop = base::sample(possible_crop, size=50, replace=T)
# possible.crop as a factor for better plotting
possible_crop = as.factor(possible_crop)

# make into data frame with ET values
default_crop_ET <- as.data.frame(possible_crop) %>%
  rename(crop_type = possible_crop) %>%
  mutate(ET = case_when((crop_type == 'wheat') ~ 2.04,
                        (crop_type == 'corn') ~ 2.54,
                        (crop_type == 'barley') ~ 3.00))

