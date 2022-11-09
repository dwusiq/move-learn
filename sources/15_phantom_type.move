address 0x1{


module SimpleCoinModule{
    use 0x1::PhantomTypeModule;
    struct Coin has store{
        value:u64
    }

    struct Balance has key{
        coin:Coin
    }

    public fun public_balance(sn:&signer){
        PhantomTypeModule::public_balance<Coin>(sn)
    }

    public fun mint(recipient:address,amount:u64){
        PhantomTypeModule::mint<Coin>(recipient,amount)
    }
    
    public fun getBalance(addr:address):u64{
         PhantomTypeModule::getBalance<Coin>(addr)
    }

}



//can write common method by generice type
module PhantomTypeModule{
    struct Coin<phantom MyCoinType> has store{
        value:u64
    }

    struct Balance<phantom MyCoinType> has key{
        coin:Coin<MyCoinType>
    }

    public fun public_balance<MyCoinType>(sn:&signer){
        let empty_coin = Coin<MyCoinType>{value:0};
        move_to(sn,Balance<MyCoinType>{coin:empty_coin});
    }

    public fun mint<MyCoinType>(recipient:address,amount:u64)acquires Balance{
        //TODO need check owner
        let balance = borrow_global<Balance<MyCoinType>>(recipient).coin.value;
        let balance_ref = &mut borrow_global_mut<Balance<MyCoinType>>(recipient).coin.value;
        *balance_ref = balance + amount;
    }

    
    public fun getBalance<MyCoinType>(addr:address):u64 acquires Balance{
        borrow_global<Balance<MyCoinType>>(addr).coin.value
    }

}
}
