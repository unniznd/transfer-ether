# Transfer Ether from one account to another

This is a simple smart contract written in solidity using truffle that allows you to transfer Ether from one account to another. It uses the `transfer` function to send Ether.

## Prerequisites

- Node.js
- Truffle
- Ganache (or any other Ethereum client)

## Installation

1. Clone the repository

```bash
git clone https://github.com/unniznd/transfer-ether.git
cd transfer-ether
```

2. Install dependencies

```bash
npm install
```

3. Start Ganache

```bash
ganache-cli
```

4. Compile the smart contract

```bash
npx truffle compile
```

5. Deploy the smart contract

```bash
npx truffle deploy
```

## Sending Ether

1. Use the following command to open the truffle console

```bash
npx truffle console
```

2. In the console, run the following commands to send Ether

```javascript
const instance = await TransferETH.deployed();
const accounts = await web3.eth.getAccounts();
await instance.sendEther(
  accounts[0],
  accounts[1],
  web3.utils.toWei("0.1", "ether"),
  { from: accounts[0] }
);
```

3. Check the balance of the accounts in the ganache UI will show the transfer of Ether from one account to another.
4. You can also check the balance of the accounts using the following command

```javascript
const balance1 = await web3.eth.getBalance(accounts[0]);
const balance2 = await web3.eth.getBalance(accounts[1]);
console.log(
  `Balance of account 1: ${web3.utils.fromWei(balance1, "ether")} Ether`
);
console.log(
  `Balance of account 2: ${web3.utils.fromWei(balance2, "ether")} Ether`
);
```

### Note: When running functions in the truffle console, make sure to use `await` for asynchronous functions.

### Note: If you are getting an error like opcode missing while compiling, use lower version of solidity (0.8.0 or 0.7.0) in the contract.
