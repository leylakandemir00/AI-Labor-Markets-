# Does AI Compress Wages?
### Evidence from a Trend-Break Difference-in-Differences Design

**Yishu Sheng · Shanqi Zhang · Leyla Aysegul Kandemir**  
University of Chicago Booth School of Business · BUS 41207: Causal Inference · March 2026

---

## Summary

This paper studies the labor-market effects of generative AI following the release of ChatGPT in late 2022. We show that standard difference-in-differences designs fail placebo tests for all four major AI exposure indices — all 12 cases reject at *p* < 0.001 — confirming that high-exposure occupations were already on different wage trajectories before ChatGPT.

Using the trend-break estimator of Wolfers (2006), we find that ChatGPT **raised** wages by +0.31% in high-exposure occupations — reversing the sign of standard DID — while leaving aggregate employment unchanged. Wage gains are concentrated at the bottom of the distribution (+0.62%*** at the 10th percentile, indistinguishable from zero at the 90th), consistent with **task upgrading** rather than skill complementarity.

A firm-level extension using Compustat and the Anthropic Economic Index (AEI) finds selective headcount reductions at more exposed firms (−0.263**, *p* < 0.01), with labor costs and revenue unchanged — a productivity restructuring story, not displacement.

---

## Key Results

| Finding | Estimate | Sig. |
|---|---|---|
| Standard DID wage effect (biased) | −2.01% | *** |
| Trend-break wage effect (causal) | +0.31% | *** |
| Wage effect at p10 (floor raiser) | +0.62% | *** |
| Wage effect at p90 (ceiling) | +0.02% | n.s. |
| Firm-level employment (Compustat) | −0.263 | ** |
| Firm-level labor cost | +0.030 | n.s. |
| Firm-level revenue | −0.168 | n.s. |

---

## Repository Structure

```
ai-labor-markets/
├── paper/
│   ├── AI_Labor_Final.tex        # LaTeX source
│   └── AI_Labor_Final.pdf        # Compiled PDF
├── code/
│   ├── 01_build_panel.R          # BLS OEWS panel construction
│   ├── 02_occupation_did.R       # Occupation-level DID & placebo tests
│   ├── 03_firm_did.R             # Firm-level Compustat DID
│   ├── 04_mechanism.R            # Autonomy vs human-only channel
│   └── 05_inequality_cps.R       # Within-occupation inequality (CPS)
├── data/
│   └── README_data.md            # Data sources and download instructions
├── figures/
│   ├── figure_1.pdf              # Pre-treatment wage trends (EDA)
│   └── figure_2.pdf              # Wage effects by percentile
├── slides/
│   └── leyla_slides.pptx         # Presentation slides
└── README.md                     # This file
```

---

## Data Sources

| Dataset | Source | Description |
|---|---|---|
| BLS OEWS | [bls.gov/oes](https://www.bls.gov/oes/) | Occupation × state × year wages, 2019–2024 |
| Compustat North America | WRDS (requires access) | Firm-level financials, 2019–2024 |
| AEI (Anthropic Economic Index) | [anthropic.com/economic-index](https://www.anthropic.com/economic-index) | Occupation-level AI usage, Nov 2025 |
| AIOE (Felten et al. 2021) | [SSRN](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3580933) | AI Occupational Exposure Index |
| GPT Exposure (Eloundou et al. 2024) | [Science](https://www.science.org/doi/10.1126/science.adp4591) | Task-level GPT exposure |
| O*NET | [onetonline.org](https://www.onetonline.org/) | Occupational task characteristics |
| IPUMS CPS ASEC | [ipums.org](https://cps.ipums.org/) | Individual-level wages, 2019–2024 |

> **Note:** Compustat data is proprietary (WRDS). All other datasets are publicly available. See `data/README_data.md` for download instructions.

---

## Replication

```r
# Install required packages
install.packages(c("tidyverse", "fixest", "haven", "readxl", 
                   "ipumsr", "Hmisc", "broom"))

# Run in order:
source("code/01_build_panel.R")       # ~5 min
source("code/02_occupation_did.R")    # ~3 min
source("code/03_firm_did.R")          # ~2 min
source("code/04_mechanism.R")         # ~2 min
source("code/05_inequality_cps.R")    # ~5 min
```

---

## Citation

```bibtex
@unpublished{sheng2026ai,
  title   = {Does {AI} Compress Wages? {Evidence} from a Trend-Break 
             Difference-in-Differences Design},
  author  = {Sheng, Yishu and Zhang, Shanqi and Kandemir, Leyla Aysegul},
  note    = {University of Chicago Booth School of Business, BUS 41207},
  year    = {2026}
}
```

---

## References

- Wolfers, J. (2006). Did unilateral divorce laws raise divorce rates? *American Economic Review*, 96(5), 1802–1820.
- Felten, E., Raj, M., & Seamans, R. (2021). Occupational, industry, and geographic exposure to artificial intelligence. *Strategic Management Journal*, 42(12), 2195–2217.
- Eloundou, T., Manning, S., Mishkin, P., & Rock, D. (2024). GPTs are GPTs. *Science*, 384(6702), 1306–1308.
- Massenkoff, M., & McCrory, E. (2026). The Anthropic Economic Index. *Anthropic Working Paper*.
- Brynjolfsson, E., Li, D., & Raymond, L. (2025). Generative AI at work. *Quarterly Journal of Economics*, 140(2), 889–942.
