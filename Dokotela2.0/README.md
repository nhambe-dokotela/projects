# Dokotela 2.0 Strategy

## Files

| File | Description |
|------|-------------|
| `Dokotela2.0_strategy.pine` | Pine Script v6 — paste into TradingView Pine Editor |
| `backtest_analysis.py` | Python script — pulls M15 data and runs dual dataset analysis |
| `Dokotela2_DualAnalysis_*.xlsx` | Excel backtest results — Dataset 1 (base) vs Dataset 2 (H1 filter) |

## Pine Script Usage

1. Open TradingView, go to any M5 or M15 chart
2. Open Pine Editor at the bottom
3. Paste `Dokotela2.0_strategy.pine`
4. Click **Add to chart**
5. Open **Strategy Tester** tab for backtest results
6. Set alerts via **Alert > Any alert() function call**

## Strategy Logic

- **Swing zones**: M15 rolling high/low over 75 bars
- **Trigger**: M1 EMA 9/21 crossover while price is in zone
- **Trend filter**: M15 price above/below EMA 50
- **Cooldown**: 5 bars after SL hit before re-arming
- **SL**: Below swing low (buy) / above swing high (sell) + 1 ATR buffer
- **TP**: Opposing swing level or 3R default

## Python Backtest Usage

```bash
pip install yfinance pandas pandas-ta openpyxl
python backtest_analysis.py
```

Produces an Excel workbook with:
- **Dataset 1**: Base strategy signals
- **Dataset 2**: Base + H1 structure filter (2 confirmed pivots, entry on 3rd touch)
- **SUMMARY** sheet: side-by-side comparison with profit factor colour coding

## Profit Factor Guide

| PF | Rating |
|----|--------|
| < 1.0 | Losing |
| 1.0 – 1.25 | Marginal |
| 1.25 – 1.5 | Acceptable |
| 1.5 – 2.0 | Good |
| 2.0 – 3.0 | Very Good |
| > 3.0 | Excellent |
