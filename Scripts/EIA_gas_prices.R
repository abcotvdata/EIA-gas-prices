library(tidyverse)
library(eia)

# use EIA library key

eia_set_key(EIA_key)

# San Francisco

id <- "PET.EMM_EPMR_PTE_Y05SF_DPG.W"
(d <- eia_series(id, n = 100))

sf_gas <- unnest(d)

sf_gas1 <- sf_gas %>% 
  select("name", "updated", "value", "date", "year", "month", "week")

write.csv(sf_gas1,"sf_gas.csv", row.names = TRUE)

# Los Angeles

id <- "PET.EMM_EPMR_PTE_Y05LA_DPG.W"
(d <- eia_series(id, n = 100))

la_gas <- unnest(d)

la_gas1 <- la_gas %>% 
  select("name", "updated", "value", "date", "year", "month", "week")

write.csv(la_gas1,"la_gas.csv", row.names = TRUE)

# Chicago

id <- "PET.EMM_EPMR_PTE_YORD_DPG.W"
(d <- eia_series(id, n = 100))

chicago_gas <- unnest(d)

chicago_gas1 <- chicago_gas %>% 
  select("name", "updated", "value", "date", "year", "month", "week")

write.csv(chicago_gas1,"chicago_gas.csv", row.names = TRUE)

# New York City

id <- "PET.EMM_EPMR_PTE_Y35NY_DPG.W"
(d <- eia_series(id, n = 100))

nyc_gas <- unnest(d)

nyc_gas1 <- nyc_gas %>% 
  select("name", "updated", "value", "date", "year", "month", "week")

write.csv(nyc_gas1,"nyc_gas.csv", row.names = TRUE)

# Philadelphia is not listed 
