# ============================================================
# Does AI Compress Wages?
# Sheng, Zhang, Kandemir (2026) — BUS 41207, Booth
# ============================================================
# 02_occupation_did.R
# Standard DID, placebo tests, trend-break DID,
# percentile regressions, heterogeneity splits.
#
# Input:  data/state_panel_final.csv
# Output: tables/, figures/figure_1.pdf, figures/figure_2.pdf
# ============================================================

library(tidyverse)
library(fixest)

# Add your occupation-level DID code here
