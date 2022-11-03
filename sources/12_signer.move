module 0x01::SignerModule{
    use 0x1::signer;

    public fun signer_address(sn:&signer):address{
        return (signer::address_of(sn))
    }
}


module 0x01::SignerTest{
    use 0x1::debug;
    use 0x01::SignerModule;

     #[test(sn = @0x125)]
     fun signer_test_main(sn: &signer){
       let addr = SignerModule::signer_address(sn);
       debug::print(&addr)
    }
}
