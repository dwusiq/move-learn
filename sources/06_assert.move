module 0x01::AssertModule{
    public fun requireEqual(a:u64,b:u64){
       assert!(a==b,0);//if a !=b ==> throw and exit
    }
}