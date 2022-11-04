//  move sandbox run ./scripts/04_if_test.move --dry-run
script{
   use 0x1::debug;
   use 0x01::IfModule;

    fun main(){
        let a:u64 = 3;
        let b:u64 = 4;

        let max_value = IfModule::max(a,b);
        debug::print(&max_value);
    }   
}