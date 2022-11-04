//move: move source to another scope
//copy: copy source to another scope(default)
module 0x01::MoveAndCopyModule{
    struct User has drop,copy{
        id:u64,
        age:u64
    }

    public fun initUser(id:u64,age:u64):User{
        User{id,age}
    }

    public fun moveUser(u:User):u64{
       return(u.id)
    }
    
    public fun copyUser(u:User):u64{
       return(u.id)
    }
}
