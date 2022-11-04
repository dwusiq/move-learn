//move sandbox run ./scripts/10_struct_test.move --args 5 7 --dry-run
script{
    use 0x1::debug;
    use 0x01:: StructModule;

    fun main(a:u64,b:u64){
        let sc = StructModule::initClass(a,b);
        let id:u64 = StructModule::getId(sc);
        debug::print(&id);
    }
}