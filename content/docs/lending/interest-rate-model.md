---
author: "Constantin Lobov"
date: 2021-04-22
linktitle: Interest Rate Model
menu:
  main:
    parent: audit
next: /
prev: /
title: Interest Rate Model
weight: 10
---

# Interest Rate Model

## APY Function

**Borrow APY**
```jsx
= \[1 + Base + Multiplier \* min\(UtilizationRate, Kink\) + max\(JumpMultiplier \* UtilizationRate - Kink, 0\)\] ^ 2102400 - 1
```


**Supply APY**
```jsx
Distribute \(Interest Paid by Borrowers Per Block - Reserve\) to all suppliers, and convert it into APY
```

```jsx 
= Distribute \[\(1 + Borrow APY\) ^ \(1 / BlocksPerYear\) - 1\] \* Total Borrow \* \(1 - Reserve Factor\) to all suppliers, and convert it into APY
```

```jsx
= {\[\(1 + Borrow APY\) ^ \(1 / BlocksPerYear\) - 1\] \* Total Borrow \* \(1 - Reserve Factor\) / Total Supply}, and convert it into APY
```

```jsx
= {1 + [(1 + Borrow APY) ^ (1 / BlocksPerYear) - 1] * Total Borrow * (1 - Reserve Factor) / Total Supply} ^ BlocksPerYear - 1
```

```jsx
= **{1+\[\(1+Borrow APY\)^\(1/BlocksPerYear\)-1\]\*\(1-Reserve Factor\)\*Utilization Rate}^BlocksPerYear-1**
```

{% hint style="info" %}
BlocksPerYear = 2,102,400 \(15 sec per block\)
{% endhint %}

{% hint style="info" %}
Find other variables in [Markets](https://app.cream.finance/markets)
{% endhint %}

## Stable + Major

![](https://i.imgur.com/5aoSePr.png)

<table>
  <thead>
    <tr>
      <th style="text-align:left">Parameter</th>
      <th style="text-align:left">Value</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Category</td>
      <td style="text-align:left">Major &amp; Stable</td>
    </tr>
    <tr>
      <td style="text-align:left">Tokens</td>
      <td style="text-align:left">
        <p>USDT, USDC, BUSD, yCRV, yUSD, ETH, renBTC, FTT, yETH, BBTC, HBTC, HUSD,
          DAI, tBTC, WBTC, sUSD, FRAX, BAC, UST</p>
        <p>
          <br />UNI-V2-WBTC-ETH, UNI-V2-ETH-USDT, UNI-V2-DAI-ETH, UNI-V2-USDC-ETH</p>
        <p>yveCRV, yvsteCRV, yvCurve-IB</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Base</td>
      <td style="text-align:left">2%</td>
    </tr>
    <tr>
      <td style="text-align:left">Multiplier</td>
      <td style="text-align:left">25%</td>
    </tr>
    <tr>
      <td style="text-align:left">JumpMultiplier</td>
      <td style="text-align:left">500%</td>
    </tr>
    <tr>
      <td style="text-align:left">Kink</td>
      <td style="text-align:left">80%</td>
    </tr>
    <tr>
      <td style="text-align:left">Contract Address</td>
      <td style="text-align:left"><a href="https://etherscan.io/address/0x014872728e7D8b1c6781f96ecFbd262Ea4D2e1A6">0x014872728e7D8b1c6781f96ecFbd262Ea4D2e1A6</a>
      </td>
    </tr>
  </tbody>
</table>

