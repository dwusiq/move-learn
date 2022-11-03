module 0x01::GenericsModule{
    use 0x1::debug;

    public fun show<T:drop>(t: &T){
      debug::print(t);
    } 
   
}

module 0x01::Generices_test{
    use 0x1::GenericsModule;

    #[test]
    fun main(){
        let a = 1;
        let b = true;
        GenericsModule::show(&a);
        GenericsModule::show(&b);
    }
}