# ============================================================
# Does AI Compress Wages?
# Sheng, Zhang, Kandemir (2026) — BUS 41207, Booth
# ============================================================
# 05_inequality_cps.R
# Within-occupation wage inequality using CPS ASEC.
# Collapses to occupation x year cells, computes
# P90/P10, P90/P50, P50/P10 ratios, runs DID.
#
# Input:  data/cps_00001.xml, data/cps_00001.dat,
#         data/nem-occcode-cps-crosswalk.xlsx,
#         data/job_exposure.csv
# Output: tables/
# ============================================================

library(tidyverse)
library(ipumsr)
library(fixest)
library(Hmisc)
library(readxl)

# Add your CPS inequality analysis code here
