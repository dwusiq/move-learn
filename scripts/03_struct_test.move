//  move sandbox run ./scripts/03_struct_test.move --dry-run

script{
   use 0x1::debug;
   use 0x03::User;

    fun main(){
        let id:u64 = 10;
        let age:u8 = 8;
        let sex:bool = true;

        let student = User::init(id,age,sex);
        let id:u64 = User::get_id(student);
        debug::print(&id);
    }   
}