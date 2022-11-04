module 0x1::ConstantModule{
    const DEFAULT_VALUE:u64 = 50;

    public fun is_bigger_than_default(a:u64):bool{
        a>DEFAULT_VALUE
    }

    public fun is_equal_default(a:u64):bool{
        a==DEFAULT_VALUE
    }
}