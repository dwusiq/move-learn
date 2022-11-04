// success: move sandbox run ./scripts/06_assert_test.move --args 2 2 --dry-run 
// fail: move sandbox run ./scripts/06_assert_test.move --args 2 4 --dry-run 

script{
   use 0x01::AssertModule;
   use 0x1::debug;

    fun main(a:u64,b:u64){
       AssertModule::requireEqual(a,b);
       
       let c = true;
       debug::print(&c);
    }   
}