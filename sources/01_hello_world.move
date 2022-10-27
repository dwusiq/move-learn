module 0x01::hello_world{
     use 0x1::debug;

    #[test]
    public fun write(){
        let num:u128=1010;
        debug::print(&num);
    }
}

