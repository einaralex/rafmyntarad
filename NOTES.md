What is:
Etherum
- Decentralized, open-sourve platform to host smart contracts.
- Ether, computational fuel instead of currency

Ethereum Virtual Machine (EVM) 
- 
EVM Smart Contracts
- Executed when being interacted with.
- Cannot access outside resources or memory and storage
- "When you call a smart-contract that does some state-changing work or computation (any action besides other than simply reading from storage), you will incur a gas “cost” for the work done "
- Smart-contracts have their own address, from which they can receive and send Ether. 
"
- "they have the ability to read data from the Ethereum blockchain, and access info on transactions in older blocks"


>Transactions can be fired from both types of accounts, though contracts only fire transactions in response to other transactions that they have received. Therefore, all action on the ethereum block chain is set in motion by transactions fired from externally-controlled accounts.

-- Two types of accounts
- Externally-owned accounts for sending messages, and do not contain code
- Contract accounts for executing a specific contract code upon receiving a message




Solidity
- Solidity is a statically typed and loosly-typed contract programming language that has similarities to Javascript and C. Like objects in OOP, each contract contains state variables, functions, and common data types. Contract-specific features include modifier (guard) clauses, event notifiers for listeners, and custom global variables. [2]

- "Smart contracts can track the “caller” of the function in a verifiable way, so it can determine if one of its functions is being called by a privileged “owner” or “admin” account, and act accordingly for administrative functions.

An external account sends ether to either another external account or a smart contract identically--by initiating an signing the transaction. The smart contract will only receive the ether if the called function is marked payable.

- Migrations
- Migration contract and deployment step  observe subsequent smart contract migrations, and ensures we don't double-migrate unchanged contracts in the future.


- Metamask
"MetaMask is both an Ethereum browser and a wallet. Through MetaMask you can interact with Dapps and smart contracts on the web without having to download the blockchain or install any software."


An Ethereum account consists of
- Ether balance for paying transaction fees
- A contract code used by contract accounts to implement application logic
- Storage used by contract accounts for retrieving or storing information accordingly as their code executes, otherwise it is
empty
- A nonce (number only used once) used for ensuring that transactions are only processed once

Ethereum messages serve as “functions” and have the following characteristics:
- Can be created by an external entity or a contract
- Can contain data
- Can only receive responses from contract accounts


RPC. Ganache-cli / truffle develop / TestRPC
- "TestRPC is basically a fake node, a slim program that just pretends to be a node and responds like a node would respond on your localhost machine."
- "you get instant responses for testing, instead of having to wait on the real Ethereum network to find the next block"
- "modify the file /migrations/2_deploy_contracts.js to include the name of your smart-contract, for truffle to know to compile and deploy it."
- On the ethereum network, you'd have to pay gas to deploy and your contract address would never change.
- When you shut it down, its gone and you have to compile and deploy again.
