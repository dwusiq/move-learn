module 0x01::IfModule{
    public fun max(a:u64,b:u64):u64{
       if(a>b) return (a);
       return (b)
    }
}