# BankLedger Solidity Smart Contract

This project contains a Solidity smart contract called **BankLedger** that records transactions between senders and receivers with amounts and creator IDs. It includes features to add transactions and retrieve all transaction records.

---

## Features

- Add transactions with sender name, receiver name, amount, and creator ID.
- Retrieve all stored transactions in a structured format.
- Deployed and tested on Remix IDE using Sepolia test network fork.

---

## Technologies Used

- Solidity (Smart Contract language)
- Remix IDE (for writing, compiling, and deploying contracts)
- Ethereum Sepolia Testnet (deployment environment)

---

## Contract Details

- Contract Name: `BankLedger.sol`
- Solidity Version: `^0.8.19`
- Functions:
  - `addTransaction(string sender, string receiver, uint amount, string creatorId)`: Adds a new transaction record.
  - `getAllBlocks()`: Returns all stored transactions.

---

## How to Use

1. Open [Remix IDE](https://remix.ethereum.org).
2. Create a new Solidity file and paste the `BankLedger.sol` contract code.
3. Compile the contract with Solidity compiler version 0.8.19 or compatible.
4. Deploy the contract on the **Sepolia Fork** or any preferred environment.
5. Use the deployed contract's functions:
   - Call `addTransaction()` with appropriate parameters to add a transaction.
   - Call `getAllBlocks()` to fetch all transactions.

---

## Running Locally with VS Code (Optional)

If you want to work locally:

1. Install [Node.js](https://nodejs.org/) and [npm](https://www.npmjs.com/).
2. Initialize a project:  
   ```bash
   npm init -y
