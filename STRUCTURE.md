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

    - Can send transactions to each other and to contracts.
    - Can send messages to contracts by creating and signing a transaction.

- **Contract Accounts**, controlled by _contract code_

    - Can send messages to other contracts.
    - Can only send transactions in response to recieved transactions.
    - The internal code is executed when the contract recieves a message, allowing it to read and write to internal storage, send messages or create contracts.

    When you call a contract in any other way then simply reading from storage, you will incur a "gas cost" (e. `GASPRICE`) for the computational work.
    

Definitions: 
- _Ether_
: ETH, the computational crypto-fuel of Ethereum, can bes transferred between accounts and used to pay transaction fees.
- _Nonce_
: number used only once
- _Messages_
: data package without a signature
- _Transaction_
: signed data package

### Transactions & Messages
>Transaction contains:
>
>- The recipient of the message.
>- A signature identifying the sender.
>- The amount of ether to transfer from the sender to the recipient.
>- An optional data field.
>- A `STARTGAS` value, representing the maximum number of computational steps the transaction execution is allowed to take.
>- A `GASPRICE` value, representing the fee the sender pays per computational step.
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
##########################
##########################
##########################

// breyta uppsetningu í eftirfarandi (sú röð sem maður myndi nota þegar maður byrjar að þróa)
- Solidity
- Remix
- Truffle & RPC
- 

## Solidity 
A Contract-Oriented programming language for the Ethereum Virtual Machine 

- [Source Code](https://github.com/ethereum/solidity)


- [The Ethereum Yellow Paper / Technical Paper](https://ethereum.github.io/yellowpaper/paper.pdf)


## Remix IDE
[The Remix Web Browser IDE](https://remix.ethereum.org/)
(Fara yfir metamask og mikilvægi þess að vera tengdur testnetworki áður en farið er að Remix)
(Gera stupid simple contract og sýna hvernig á að tengjast í Remix https://solidity.readthedocs.io/en/v0.5.0/introduction-to-smart-cont
Leiðbeningar: 
https://remix.readthedocs.io/en/latest/quickstart_javascript_vm.html
Velja Javascript VM (hinir þurfa external)
(Gera þetta á undan ganache-cli)

## Truffle 
 Development environment, testing framework and a deployment management for Ethereum.
- [Source Code](https://github.com/trufflesuite/truffle)
 - [Docs](https://truffleframework.com/docs/truffle/overview)

## Ganache / Truffle develop (TestRPC) 
Local blockchain network for Ethereum development.

- [Source Code](https://github.com/trufflesuite/ganache)

## Web3.js
Ethereum Javascript API to interact with a local or remote ethereum node.
[Docs](https://web3js.readthedocs.io/en/1.0/)
[Wiki]()
[Source Code]()

[Solidity language support for VSCode](https://github.com/juanfranblanco/vscode-solidity)

## Metamask (https://github.com/MetaMask)
- What is metamask
- How Metamask uses web3
- Create a wallet
- keep your seeds offline.
[Docs](https://web3js.readthedocs.io/en/1.0/)
[Wiki]()
[Source Code]()

### Test networks

Ropsten (Proof Of Work) -
[Source code](https://github.com/ethereum/ropsten) -
[Etherscan](https://ropsten.etherscan.io/)

Kovan & Rinkeby (Proof Of Authority)

[More in-depth](https://medium.com/coinmonks/ethereum-test-network-21baa86072fa)

![Networks available in Metamask](/assets/networks.png)


__Disclaimer:__ Make sure you're connected to a test network.
---

Solidity deeper

Types
> Solidity is a statically typed language, which means that the type of each variable (state and local) needs to be specified. Solidity provides several elementary types which can be combined to form complex types.
https://solidity.readthedocs.io/en/v0.5.0/types.html?highlight=mapping

Address: https://solidity.readthedocs.io/en/v0.5.0/types.html?highlight=mapping

---


# INTRODUCTION TO THE END RESULT OF THE WORKSHOP
- What are we going to be building
- and how do we use the tools above


SETUP
- git clone

SOLIDITY
- basic data types, modifiers
- Editing a smart contract

TEST
- Testing that smart contract
(hægt að testa strax, þarf ekki að breyta truffle conf og tengjast localnet)

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