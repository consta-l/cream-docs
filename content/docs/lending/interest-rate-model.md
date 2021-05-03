---
author: "Constantin Lobov"
bookToc: false
date: 2021-04-22
linktitle: Interest Rate Model
menu:
  main:
    parent: audit
next: Key-events.md
prev: /
title: Interest Rate Model

weight: 10
---

# Interest Rate Model

## APY Function

**Borrow APY**
```jsx
= 100 * CompSpeed * ErsdlPrice * BlocksPerYear / TotalBorrows / UnderlyingPrice
```


**Supply APY**
```jsx
= 100 * CompSpeed * ErsdlPrice * BlocksPerYear / (TotalSupply * ExchangeRate * UnderlyingPrice/1000000000000000000/1000000000000000000)/1000000000000000000
```

<hint info>
BlocksPerYear = 2,102,400 (15 sec per block)
<hint>


Find other variables in [Markets](https://ledning.unfederalreserve.com/markets)


