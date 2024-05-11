# Lottery on the blockchain. Fair lottery for all! (fcc tutorial)
- [Lottery on the blockchain. Fair lottery for all! (fcc tutorial)](#lottery-on-the-blockchain-fair-lottery-for-all-fcc-tutorial)
- [References](#references)
- [Installation and deployment](#installation-and-deployment)
  - [Dependencies:](#dependencies)
  - [oracle (chainlink) vrf subscription set up](#oracle-chainlink-vrf-subscription-set-up)


# References
[Free code camp tutorial](https://github.com/smartcontractkit/full-blockchain-solidity-course-js?tab=readme-ov-file#lesson-9-hardhat-smart-contract-lottery)

# Installation and deployment
## Dependencies:
```bash
yarn add --dev @nomiclabs/hardhat-ethers@npm:hardhat-deploy-ethers ethers @nomiclabs/hardhat-etherscan @nomiclabs/hardhat-waffle chai ethereum-waffle hardhat hardhat-contract-sizer hardhat-deploy hardhat-gas-reporter prettier prettier-plugin-solidity solhint solidity-coverage dotenv @chainlink/contracts
```
Install all with: `yarn install`

## oracle (chainlink) vrf subscription set up
https://docs.chain.link/vrf/v2/subscription/examples/get-a-random-number
- Create and fund a subscription
- Create and deploy a VRF v2 compatible contract (done automatically through product deployment)
