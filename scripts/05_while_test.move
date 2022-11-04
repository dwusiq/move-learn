//  move sandbox run ./scripts/05_while_test.move --dry-run
script{
   use 0x1::debug;
   use 0x01::WhileModule;


    fun main(){
        let a:u64 = 2;
        let b:u64 = 5;

        let sum_value = WhileModule::reAdd(a,b);
        debug::print(&sum_value);
    }   
}