//move sandbox run ./scripts/15_phantom_type_test.move --args 0x123 --dry-run

script{
    use 0x1::signer;
    use 0x1::debug;
    use 0x1::SimpleCoinModule;

    fun main(sender:&signer){
        let sender_address = signer::address_of(sender);
        SimpleCoinModule::public_balance(sender);
        SimpleCoinModule::mint(sender_address,10);
        let balance_amount = SimpleCoinModule::getBalance(sender_address);
        debug::print(&balance_amount);
    }
}