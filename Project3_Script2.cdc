import CryptoPoops from 0x07
import NonFungibleToken from 0x05

pub fun main(account: Address, id: UInt64): &CryptoPoops.NFT {
    let collectionReferencePublic = getAccount(account).getCapability(/public/MyCollectionPublic)
                                .borrow<&CryptoPoops.Collection>()
                                ?? panic("No Collection for this ID")
    
    let readNFT = collectionReferencePublic.borrowAuthNFT(id: id)
    log(readNFT.name)
    log(readNFT.favouriteFood)
    log(readNFT.luckyNumber)
    
    return readNFT
}