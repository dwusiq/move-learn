//move sandbox run ./scripts/13_source_test.move --args 0x123 --dry-run
script{
    use 0x1::signer;
    use 0x1::debug;
    use 0x01::SourceModule;

    fun main(account:&signer){
        SourceModule::init_source(account);
        let addr = signer::address_of(account);
        let length_before = SourceModule::get_length(addr);
        debug::print(&length_before);

        SourceModule::add_item(addr,3);
        let length_after = SourceModule::get_length(addr);
        debug::print(&length_after);

        let existFlag =  SourceModule::is_exist(addr);
        debug::print(&existFlag);

        let value_result = SourceModule::get_by_index(addr,0);
         debug::print(&value_result);
        

        SourceModule::destroy(addr)

    }

}