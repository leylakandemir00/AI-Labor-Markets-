# ============================================================
# Does AI Compress Wages?
# Sheng, Zhang, Kandemir (2026) — BUS 41207, Booth
# ============================================================
# 04_mechanism.R
# Autonomy vs human-only capability extension channels.
# Constructs industry-level mechanism variables from AEI
# raw task data + O*NET crosswalk, then runs horse-race DID.
#
# Input:  data/aei_raw_claude_ai_2025-11-13_to_2025-11-20.csv,
#         data/Task Statements.xlsx,
#         data/national_M2022_dl.xlsx,
#         data/compustat.csv
# Output: tables/
# ============================================================

library(tidyverse)
library(fixest)
library(readxl)

# Add your mechanism analysis code here
