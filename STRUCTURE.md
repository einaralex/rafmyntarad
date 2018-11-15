# IBF Workshop - Ethereum Smart Contracts

{ Workshop description }

## Ethereum 

> Ethereum is a decentralized platform that runs smart contracts: applications that run exactly as programmed without any possibility of downtime, censorship, fraud or third-party interference.
>
>These apps run on a custom built blockchain, an enormously powerful shared global infrastructure that can move value around and represent the ownership of property. 
>
> \- [The Ethereum Project][1]
## Smart Contracts

- Executed when being interacted with.
- Cannot access outside resources or clients memory and storage.



![Hyperledger Fabric Documentation](https://hyperledger-fabric.readthedocs.io/en/release-1.2/_images/AppConceptsOverview.png)
Source: [Hyperledger Fabric Documentation](https://hyperledger-fabric.readthedocs.io/en/release-1.2/_images/AppConceptsOverview.png)

___
### Accounts

>An Ethereum account contains:
>
>- The nonce, a counter used to make sure each transaction can only be processed once
>- The account's current ether balance
>- The account's contract code, if present
>- The account's storage (empty by default)
> 
>\- [The Ethereum Whitepaper][2]

#### Account Types
- **Externally Owned Accounts**, controlled by _private keys_

    - Can send transactions to each other and to contracts
    - Can send messages to contracts by creating and signing a transaction

- **Contract Accounts**, controlled by _contract code_

    - Can send messages to other contracts
    - Can only send transactions in response to recieved transactions
    - The internal code is executed when the contract recieves a message, allowing it to read and write to internal storage, send messages or create contracts.

    When you call a contract in any other way then simply reading from storage, you will incur a "gas cost" (e. `GASPRICE`) for the computational work.
    

Definitions: 
- _Ether_
: ETH, the computational crypto-fuel of Ethereum, can be transferred between accounts and used to pay transaction fees.
- _Nonce_
: number used only once
- _Messages_
: data package without a signature
- _Transaction_
: signed data package

### Transactions & Messages
>Transaction contains:
>
>- The recipient of the message
>- A signature identifying the sender
>- The amount of ether to transfer from the sender to the recipient
>- An optional data field
>- A `STARTGAS` value, representing the maximum number of computational steps the transaction execution is allowed to take
>- A `GASPRICE` value, representing the fee the sender pays per computational step
> 
>
>Message contains: 
>- The sender of the message (implicit)
>- The recipient of the message
>- The amount of ether to transfer alongside the message
>- An optional data field
>- A `STARTGAS`  value
> 
>\- [The Ethereum Whitepaper][2]


___

### Technical standards

[ERC20](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md)  : A standard interface for tokens. 

[ERC721](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md) : A standard interface for non-fungible tokens, also known as deeds.

[ERC725](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-725.md)
 : A proxy contract for key management and execution, to establish a Blockchain identity.

___

## Solidity 
The Contract-Oriented programming language - [Source Code](https://github.com/ethereum/solidity)
- Ethereum Virtual Machine (EVM)
> The virtual machine that forms the key part of the execution model for an Account’s associated EVM Code
>
> - [The Ethereum Yellow Paper](https://ethereum.github.io/yellowpaper/paper.pdf)


  Ethereum Runtime Environment: (aka ERE) The environment which is provided to an Autonomous Object
executing in the EVM. Includes the EVM but also the structure of the world state on which the EVM relies for
certain I/O instructions including CALL & CREATE
https://ethereum.github.io/yellowpaper/paper.pdf
  - Debugger: The Remix Web Browser IDE ( link )
- VSCode + Solidity extension (https://github.com/juanfranblanco/vscode-solidity)




##Truffle ( link )
 Development environment, testing framework and asset pipeline for Ethereum.

- how it talks to the network
- stages: 
    compilation (compile the code to an executable) `yarn compile`
    migration (why migration?) `yarn migrate`
    deployment `yarn deploy`

# Networks

- Local
- - Ganache-cli, TestRPC and ??
- Test:  
    Ropsten - (POW)
    Kovan - (POA)
    Rinkeby - (POA)
(screenshot of metamask)
- Live: Main 

Disclaimer: Make sure you're connected to a test network.

###In details (https://medium.com/coinmonks/ethereum-test-network-21baa86072fa)
    
##Web3
- communication to the blockchain (make it visual)
communicates to a local node through RPC calls. web3 works with any Ethereum node, which exposes an RPC layer.



##Metamask (https://github.com/MetaMask)
- How Metamask uses web3
- Create a wallet
- keep your seeds offline.


#INTRODUCTION TO THE END RESULT OF THE WORKSHOP
- What are we going to be building
- and how do we use the tools above



SETUP
- git clone

SOLIDITY
- basic data types, modifiers
- Editing a smart contract

TEST
- Testing that smart contract

MIGRATION
1. Modify migration/2_deploy_contracts.js
2. truffle compile
3. truffle migrate (deploy to testRPC)
4. Show that the smart contract gets an address



UI
- Grab and send events

DEPLOYMENT
- Local deployment & testing

END
- Test tokens
- Deploy to test network
- Koven block explorer



[1]: https://www.ethereum.org/
[2]: https://github.com/ethereum/wiki/wiki/White-Paper
[3]: https://en.wikipedia.org/wiki/ERC-20
