# Figures

Place your exported figures here:

- `figure_1.pdf` — Pre-treatment wage trends by AIOE exposure group (EDA plot)
- `figure_2.pdf` — Trend-break wage effects by wage percentile with 95% CI

## How to export from R

```r
ggsave("figures/figure_1.pdf", plot = p1, width = 7, height = 3.5, device = "pdf")
ggsave("figures/figure_2.pdf", plot = p2, width = 6, height = 3.5, device = "pdf")
```

PDF format is preferred for the LaTeX paper (vector, no quality loss).
PNG at 300 dpi also works: `ggsave(..., dpi = 300)`.
