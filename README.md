# Yield Farming

DeFi app which implements the concept of yield farming / liquidity mining following the [Dapp University Tutorial](https://www.youtube.com/watch?v=CgXQC4dbGUE).

## Setup

- `npm install`
- Install and start [Ganache](https://www.trufflesuite.com/ganache)
- Install and setup [MetaMask](https://metamask.io/)

## Useful commands

- `npx truffle compile`
- `npx truffle migrate [--reset]`
- `npx truffle console`
- `npx truffle exec <path>.js`
- `npx truffle test` or `npm run test:truffle`

- `npm run start`

## Misc

```
# Inside of a truffle console
> tokenFarm = await TokenFarm.deployed()

> tokenFarm

> tokenFarm.address

> name = await tokenFarm.name()
```
