module 0x01::AssertModule{
    public fun requireEqual(a:u64,b:u64){
       assert!(a==b,0);//if a !=b ==> throw and exit
    }


}

module 0x01::assert_test{
   use 0x01::AssertModule;

    #[test]
    fun main(){
        let a:u64 = 2;
        let b:u64 = 2;

       AssertModule::requireEqual(a,b);
    }   
}