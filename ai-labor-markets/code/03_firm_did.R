# ============================================================
# Does AI Compress Wages?
# Sheng, Zhang, Kandemir (2026) — BUS 41207, Booth
# ============================================================
# 03_firm_did.R
# Firm-level DID using Compustat + AEI Bartik instrument.
# Outcomes: log(emp), log(labor cost/emp), log(revenue)
# Includes event study and placebo test.
#
# Input:  data/compustat.csv (from WRDS),
#         data/job_exposure.csv,
#         data/national_M2022_dl.xlsx
# Output: tables/
# ============================================================

library(tidyverse)
library(fixest)
library(readxl)

# Add your firm-level DID code here
