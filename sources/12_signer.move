module 0x01::SignerModule{
    use 0x1::signer;

    public fun signer_address(sn:&signer):address{
        return (signer::address_of(sn))
    }
}