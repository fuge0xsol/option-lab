# 期权入门实验室 · Options Lab

四大基本期权头寸（买/卖 × 看涨/看跌）交互式教学站：每页给出对应的 BSM 定价公式（符号式 + 实时代入计算），以及 Delta / Gamma / Vega / Theta 四个希腊字母随标的价格滑动的联动演示；底部附参数化微笑的波动率曲面示意图，随 S / K / σ / T 滑块实时变形。

单文件、零依赖、纯前端。理论价值与希腊字母均由 Black–Scholes–Merton 闭式解实时计算，仅供教学演示。

- GitHub Pages: https://fuge0xsol.github.io/option-lab/
- Cloudflare Pages: https://option-lab.pages.dev

## 更新发布

```bash
./deploy.sh
```
