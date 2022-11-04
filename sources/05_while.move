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