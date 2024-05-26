import CryptoPoops from 0x07
import NonFungibleToken from 0x05

pub fun main(account: Address): [UInt64] {
    let collectionReferencePublic = getAccount(account).getCapability(/public/MyCollectionPublic)
                                .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>()
                                ?? panic("No Collection for this ID")
    return collectionReferencePublic.getIDs()
}