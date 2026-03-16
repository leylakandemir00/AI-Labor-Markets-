# Data Sources and Download Instructions

All datasets below are publicly available except Compustat (WRDS required).
Download each file and place it in the `data/` folder before running the code.

---

## 1. BLS OEWS — Occupational Employment and Wage Statistics
- **URL:** https://www.bls.gov/oes/tables.htm
- **What to download:** "State" cross-industry files for 2019, 2020, 2021, 2022, 2023, 2024
- **Filenames:** `state_M2019_dl.xlsx`, ..., `state_M2024_dl.xlsx`
- **Place in:** `data/oesm_years/`

## 2. Anthropic Economic Index (AEI)
- **URL:** https://www.anthropic.com/economic-index
- **Files:** `job_exposure.csv` and `aei_raw_claude_ai_2025-11-13_to_2025-11-20.csv`
- **Place in:** `data/`

## 3. AIOE — AI Occupational Exposure Index (Felten et al. 2021)
- **URL:** https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3580933
- **File:** `AIOE_DataAppendix.xlsx`
- **Place in:** `data/`

## 4. GPT Exposure (Eloundou et al. 2024)
- **URL:** https://www.science.org/doi/10.1126/science.adp4591 (supplementary materials)
- **Files:** `full_labelset.tsv`, `full_onet_data.tsv`
- **Place in:** `data/`

## 5. O*NET Task Statements
- **URL:** https://www.onetcenter.org/database.html → Download Center → Task Statements
- **File:** `Task Statements.xlsx`
- **Place in:** `data/`

## 6. BLS Industry-Occupation Matrix
- **URL:** https://www.bls.gov/emp/tables/emp-by-detailed-occupation.htm
- **File:** `national_M2022_dl.xlsx`
- **Place in:** `data/`

## 7. BLS CPS-to-NEM Crosswalk
- **URL:** https://www.bls.gov/emp/documentation/crosswalks.htm
- **File:** `nem-occcode-cps-crosswalk.xlsx`
- **Place in:** `data/`

## 8. IPUMS CPS ASEC — Current Population Survey
- **URL:** https://cps.ipums.org/cps/
- **Variables:** YEAR, ASECFLAG, AGE, INCWAGE, WKSWORK2, UHRSWORKLY, OCC, ASECWT
- **Years:** 2019–2024
- **Output files:** `cps_00001.xml` and `cps_00001.dat`
- **Place in:** `data/`

## 9. Compustat North America ⚠️ PROPRIETARY
- **Access via:** WRDS — https://wrds-www.wharton.upenn.edu/
- **Variables:** `gvkey`, `fyear`, `emp`, `xlr`, `revt`, `at`, `naics`, `curcd`, `indfmt`, `datafmt`, `consol`
- **Years:** 2019–2024
- **Note:** Not included in this repo due to WRDS licensing restrictions.
  Your institution's library likely provides access. Download as CSV and place in `data/`.

## 10. Frey & Osborne (2013) — Automation Risk
- **URL:** https://www.oxfordmartin.ox.ac.uk/publications/the-future-of-employment/
- **File:** `jobautomationprobability.csv`
- **Place in:** `data/`

## 11. Webb AI Index (2020)
- **Files:** `exposure_by_occ1990dd.txt`, `onet_to_occ1990dd.txt`
- **Place in:** `data/`

---

## Expected folder structure after download

```
data/
├── oesm_years/
│   ├── state_M2019_dl.xlsx
│   ├── state_M2020_dl.xlsx
│   ├── state_M2021_dl.xlsx
│   ├── state_M2022_dl.xlsx
│   ├── state_M2023_dl.xlsx
│   └── state_M2024_dl.xlsx
├── job_exposure.csv
├── aei_raw_claude_ai_2025-11-13_to_2025-11-20.csv
├── AIOE_DataAppendix.xlsx
├── full_labelset.tsv
├── full_onet_data.tsv
├── Task Statements.xlsx
├── national_M2022_dl.xlsx
├── nem-occcode-cps-crosswalk.xlsx
├── cps_00001.xml
├── cps_00001.dat
├── jobautomationprobability.csv
├── exposure_by_occ1990dd.txt
├── onet_to_occ1990dd.txt
└── README_data.md   ← this file
```
