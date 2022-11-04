//move sandbox run ./scripts/08_generics_T_test.move --dry-run 

script{
    use 0x1::GenericsModule;

    fun main(){
        let a = 1;
        let b = true;
        GenericsModule::show(&a);
        GenericsModule::show(&b);
    }
}