module 0x01::IfModule{
    public fun max(a:u64,b:u64):u64{
       if(a>b) return (a);
       return (b)
    }


}

module 0x01::if_test{
   use 0x1::debug;
   use 0x01::IfModule;

    #[test]
    fun main(){
        let a:u64 = 3;
        let b:u64 = 4;

        let max_value = IfModule::max(a,b);
        debug::print(&max_value);
    }   
}