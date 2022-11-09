module 0x1::SimpleCoin{
    struct Coin has store{value:u64}
    struct Balance has store,key{coin:Coin}

    public fun public_balance(sender:&signer){
        let balance = Balance{coin:Coin{value:0}};
        move_to<Balance>(sender,balance)
    }

    public fun mint(recipient:address,amount:u64) acquires Balance{
        let balance = borrow_global_mut<Balance>(recipient);
        balance.coin.value = balance.coin.value+amount;
    }

    public fun getBalance(addr:address):u64 acquires Balance{
        let balance = borrow_global<Balance>(addr);
        balance.coin.value
    }

    
    public fun transfer(sender:address,recipient:address,amount:u64):u64 acquires Balance{
        withdraw(sender,amount);
        deposit(recipient,amount);
        amount
    }

    fun withdraw(addr:address,amount:u64):u64 acquires Balance{
        let balance = borrow_global_mut<Balance>(addr);
        balance.coin.value = balance.coin.value-amount;
        amount
    }

    fun deposit(addr:address,amount:u64):u64 acquires Balance{
        let balance = borrow_global_mut<Balance>(addr);
        balance.coin.value = balance.coin.value+amount;
        amount
    }
}