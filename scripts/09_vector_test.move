//move sandbox run ./scripts/09_vector_test.move --dry-run      

script{
    use 0x1::VectorModule;

    fun main(){
        VectorModule::vector_run();
    }
}