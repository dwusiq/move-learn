module 0x01::ReferenceModule{

    //will throw "Unused assignment or binding for local 'a'"
    public fun swapFail(a:u64,b:u64){
        let tmp = a;
        a = b;
        b = tmp;
    }

    public fun swapSuccess(a:&mut u64,b:&mut u64){
        let tmp = *a;
        *a = *b;
        *b = tmp;
    }



}

module 0x01::reference_test{
   use 0x1::debug;
   use 0x01::ReferenceModule;

    #[test]
    fun main(){
       let (a,b) = (5,6);
    //    ReferenceModule::swapFail(a,b);
       ReferenceModule::swapSuccess(&mut a,&mut b);
      debug::print(&a);
       debug::print(&b);
    }   
}