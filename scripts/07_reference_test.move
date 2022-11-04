//move sandbox run ./scripts/07_reference_test.move --dry-run 
script{
   use 0x1::debug;
   use 0x01::ReferenceModule;

    fun main(){
       let (a,b) = (5,6);
    //    ReferenceModule::swapFail(a,b);
       ReferenceModule::swapSuccess(&mut a,&mut b);
      debug::print(&a);
      debug::print(&b);
    }   
}