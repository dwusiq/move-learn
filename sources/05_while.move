module 0x01::WhileModule{
    public fun reAdd(from:u64,to:u64):u64{
        let sum = 0;
        while(from<=to){
            sum = sum+from;
            from = from+1;
        };
        return (sum)
    }


}

module 0x01::while_test{
   use 0x1::debug;
   use 0x01::WhileModule;

    #[test]
    fun main(){
        let a:u64 = 2;
        let b:u64 = 5;

        let sum_value = WhileModule::reAdd(a,b);
        debug::print(&sum_value);
    }   
}