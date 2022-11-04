//  move sandbox run ./scripts/02_fun_test.move --dry-run
script{
    use 0x1::debug;
    use 0x02::Math;

    fun fun_test(){
        let a:u64 = 10;
        let b:u64 = 12;
        let c:u64 = Math::sum(a,b);
        debug::print(&c);
    }   
}