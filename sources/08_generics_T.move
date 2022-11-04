module 0x01::GenericsModule{
    use 0x1::debug;

    public fun show<T:drop>(t: &T){
      debug::print(t);
    } 
   
}