# ============================================================
# Does AI Compress Wages?
# Sheng, Zhang, Kandemir (2026) — BUS 41207, Booth
# ============================================================
# 01_build_panel.R
# Build the state x occupation x year BLS OEWS panel
# and merge all AI exposure indices.
#
# Input:  data/oesm_years/, data/AIOE_DataAppendix.xlsx,
#         data/full_labelset.tsv, data/full_onet_data.tsv,
#         data/jobautomationprobability.csv,
#         data/exposure_by_occ1990dd.txt
# Output: data/state_panel_final.csv
# ============================================================

library(tidyverse)
library(readxl)

# Add your panel construction code here
