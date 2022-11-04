module 0x01::VectorModule{
    use 0x1::debug;
    use 0x1::vector;

    public fun vector_run(){
        let a = vector::empty<u64>();
        vector::push_back<u64>(&mut a,2);
        vector::push_back<u64>(&mut a,3);
        vector::push_back<u64>(&mut a,4);

        debug::print(&a);
    }
}