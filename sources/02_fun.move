module 0x02::Math{
    public fun sum(a:u64,b:u64):u64{
        a+b
    }   
}


module 0x03::move_method{
    use 0x1::debug;
    use 0x02::Math;

    #[test]
    fun main(){
        let a:u64 = 10;
        let b:u64 = 12;
        let c:u64 = Math::sum(a,b);
        debug::print(&c);
    }   
}