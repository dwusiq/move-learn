//move sandbox run ./scripts/11_move_and_copy_test.move  --dry-run
script{
    use 0x1::debug;
    use 0x01::MoveAndCopyModule;


    fun main(){
        let (a,b) = (3,4);
        let u = MoveAndCopyModule::initUser(a,b);
        let id_1 = MoveAndCopyModule::copyUser(u);
        debug::print(&id_1);

        let id_2 = MoveAndCopyModule::moveUser(move u);
        debug::print(&id_2);
        //   let id_3 = MoveAndCopyModule::copyUser(u); //will compile fail
    }
}