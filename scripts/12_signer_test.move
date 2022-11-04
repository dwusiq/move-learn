//move sandbox run ./scripts/12_signer_test.move --args 0x123 --dry-run
script{
    use 0x1::debug;
    use 0x01::SignerModule;

     fun signer_test_main(sn: &signer){
       let addr = SignerModule::signer_address(sn);
       debug::print(&addr)
    }
}
