//move sandbox run ./scripts/14_simple_coin_test.move --args 0x123 0x234 --dry-run
script{
    use 0x1::debug;
    use 0x1::SimpleCoin;
    use 0x1::signer;

    fun main(sender:&signer,recipient:&signer){
        let sender_addr = signer::address_of(sender);
        let recipient_addr = signer::address_of(recipient);

        //first, public_balance
        SimpleCoin::public_balance(sender);
        SimpleCoin::public_balance(recipient);

        //check balance before mint
        let sender_balance = SimpleCoin::getBalance(sender_addr);
        let recipient_balance = SimpleCoin::getBalance(recipient_addr);
        debug::print(&sender_balance);
        debug::print(&recipient_balance);

        //mint
        let amount:u64 = 30;
         SimpleCoin::mint(sender_addr,amount);

         //check balance after mint
        sender_balance = SimpleCoin::getBalance(sender_addr);
        recipient_balance = SimpleCoin::getBalance(recipient_addr);
        debug::print(&sender_balance);
        debug::print(&recipient_balance);

        //transfer
        let transfer_amount:u64 = 10;
        SimpleCoin::transfer(sender_addr,recipient_addr,transfer_amount);

        //check balance after transfer 
        sender_balance = SimpleCoin::getBalance(sender_addr);
        recipient_balance = SimpleCoin::getBalance(recipient_addr);
        debug::print(&sender_balance);
        debug::print(&recipient_balance);
    }
}