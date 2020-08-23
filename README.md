# Ethereum Bootcamp Project

Code snippets for the Ethereum Bootcamp.

## Tasks

- Task 1: Only owner
- Task 2: Inheritance
- Task 3: Mapping / Token (Truffle)
- Task 4: ERC-20 / OpenZeppelin
- Task 5: Contract Wallet / Fallback Function

## Installation

Required software
- NPM

```bash
# Install required packages. See package.json for details
npm install

# On command line 1
npm run ganache

# On command line 2
npm run test
```

Expected output
```
BootcampToken Contract: 0xd21b49D91D761c2AAb403b7ae23Bbe3F91941c6E


  Contract: BootcampTokenSolutionTest
    ✓ Mint (178ms)


  1 passing (278ms)
```

## Update Repo

Update the dependencies in package.json

```bash
# Update all versions in package.json
ncu -u
## Hint: openzeppelin-solidity version should not change

npm update
```
