import CryptoPoops from 0x07
import NonFungibleToken from 0x05

transaction(recipient: Address, name: String, favouriteFood: String, luckyNumber: Int) {
//Minting NFT into Collection

    prepare(signer: AuthAccount) {
        let minterReference = signer.borrow<&CryptoPoops.Minter>(from: /storage/Minter)!
                                    //?? panic("Couldn't find a Minter")

        let collectionReferencePublic = getAccount(recipient).getCapability(/public/MyCollectionPublic)
                                .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>()
                                ?? panic("No Collection for this ID")
        
        collectionReferencePublic.deposit(token: <-minterReference.createNFT(name: name, favouriteFood: favouriteFood, luckyNumber: luckyNumber))
    }
    execute {
        log("Newly Minted NFT Stored in Collection")
    }
}
