module 0x01::hello_world{

    //aptos move test --filter hello_world_main
    #[test]
    public fun hello_world_main(){
        let num:u128=1010;
        0x1::debug::print(&num);
    }

     //aptos move test --filter signer_test
     #[test(sn = @0x125)]
     fun signer_test(sn: &signer){
       let addr = 0x1::signer::address_of(sn);
       0x1::debug::print(&addr)
    }
}

