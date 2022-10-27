module 0x03::User{
    struct Student has drop{
        id:u64,
        age:u8,
        sex:bool
    }

    public fun init(sid:u64,sage:u8,ssex:bool):Student{
        Student{
            id:sid,
            age:sage,
            sex:ssex
        }
    }

    public fun get_id(s:Student):u64{
        return s.id
    }
}

module 0x03::user_test{
   use 0x1::debug;
    use 0x03::User;

    #[test]
    fun main(){
        let id:u64 = 10;
        let age:u8 = 8;
        let sex:bool = true;

        let student = User::init(id,age,sex);
        let id:u64 = User::get_id(student);
        debug::print(&id);
    }   
}