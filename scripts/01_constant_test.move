//  move sandbox run ./scripts/01_constant_test.move --args 51 --dry-run
script{
    use 0x1::debug;
    use 0x1::ConstantModule;

    fun main(a:u64){
        let is_bigger = ConstantModule::is_bigger_than_default(a);
        debug::print(&is_bigger);
        let is_equal = ConstantModule::is_equal_default(a);
        debug::print(&is_equal);
    }
}