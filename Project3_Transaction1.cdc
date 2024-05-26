import CryptoPoops from 0x07

transaction() {
Creating Collection

    prepare(signer AuthAccount) {
        signer.save(- CryptoPoops.createEmptyCollection(), to storageMyCollection)
        let collectionReference = signer.link&CryptoPoops.Collection(publicMyCollectionPublic, target storageMyCollection)
    }

    execute {
        log(Collection Created!)
    }
}
