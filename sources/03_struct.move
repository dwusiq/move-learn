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
