# Flow_Project3
Project 2 - Minting NFT Collections on Flow Blockchain - made for METACRAFTERS Web 3 Course for the Flow blockchain.

# Contract

## Description

The CryptoPoops Contract is a smart contract deployed on the Flow blockchain, implementing the NonFungibleToken standard. It allows the creation, management, and transfer of unique CryptoPoop NFTs. Each CryptoPoop NFT has unique attributes including a name, favorite food, and lucky number. The contract provides functionality for minting new NFTs, transferring them between accounts, and querying owned NFTs.

## Getting Started

### Prerequisites

Before using the CryptoPoops Contract, ensure you have the following:

- Access to a Flow blockchain account or emulator for deploying and interacting with smart contracts.
- Basic knowledge of Flow blockchain, Cadence programming language, and NFT standards.

### Usage

1. **Deploy the CryptoPoops Contract:**
   - Deploy the CryptoPoops Contract on the Flow blockchain.

2. **Create an Empty Collection:**
   - Use the `createEmptyCollection` function to create an empty collection for holding NFTs.

3. **Minting a New NFT:**
   - Use the `createNFT` function from the Minter resource to mint a new CryptoPoop NFT with specified attributes (name, favorite food, lucky number).

4. **Transferring NFTs:**
   - Use the `withdraw` and `deposit` functions from the Collection resource to transfer NFTs between accounts.

5. **Querying NFTs:**
   - Use the `getIDs` function to get a list of owned NFT IDs.
   - Use the `borrowNFT` and `borrowAuthNFT` functions to borrow a reference to an NFT.

## Program Details

### Technologies Used

- **Cadence:** The programming language used for Flow blockchain smart contract development.
- **Flow Blockchain:** The underlying blockchain network for deploying and interacting with smart contracts.

### Smart Contract Details

- **Total Supply:** The contract keeps track of the total supply of NFTs.
- **Events:** 
  - `ContractInitialized`: Emitted when the contract is initialized.
  - `Withdraw`: Emitted when an NFT is withdrawn from a collection.
  - `Deposit`: Emitted when an NFT is deposited into a collection.
- **Resources:**
  - **NFT:** Represents a unique CryptoPoop NFT with attributes (name, favorite food, lucky number).
  - **Collection:** Manages a collection of NFTs, supporting deposit, withdrawal, and query operations.
  - **Minter:** Allows minting of new NFTs and creation of new minters.

### Contract Functions

- **createEmptyCollection:** Creates and returns an empty collection resource.
- **Minter.createNFT:** Mints a new NFT with specified attributes.
- **Minter.createMinter:** Creates and returns a new Minter resource.
- **Collection.withdraw:** Withdraws an NFT from the collection.
- **Collection.deposit:** Deposits an NFT into the collection.
- **Collection.getIDs:** Returns a list of owned NFT IDs.
- **Collection.borrowNFT:** Borrows a reference to an NFT.
- **Collection.borrowAuthNFT:** Borrows an authenticated reference to an NFT.

## Author

- **Akhileshwer Munshi**

## License

This project is licensed under the [MIT License](LICENSE.md). You can find the details in the LICENSE file.
