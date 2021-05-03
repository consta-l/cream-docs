---
author: "Constantin Lobov"
date: 2021-04-22
linktitle: Key Events
menu:
  main:
    parent: audit
next: /
prev: /
title: Key Events
weight: 10
---

# Key Events

## unTokens

| Event | Description |
| :--- | :--- |
| ```Mint (address minter, uint mintAmount, uint mintTokens)``` | Emitted upon a successful [Mint](developer/untokens.md#mint) |
| ```Redeem (address redeemer, uint redeemAmount, uint redeemTokens```) | Emitted upon a successful [Redeem](developer/untokens.md#redeem) |
| ```Borrow (address borrower, uint borrowAmount, uint accountBorrows, uint totalBorrows)``` | Emitted upon a successful [Borrow](developer/untokens.md#borrw) |
| ```RepayBorrow (address payer, address borrower, uint repayAmount, uint accountBorrows, uint totalBorrows)``` | Emitted upon a successful [Repay Borrow](developer/untokens.md#repay_borrow) |
| ```LiquidateBorrow (address liquidator, address borrower, uint repayAmount, address crTokenCollateral, uint seizeTokens)``` | Emitted upon a successful [Liquidate Borrow](developer/untokens.md#liquidate_borrow) |



