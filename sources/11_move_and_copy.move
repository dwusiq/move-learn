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

module 0x01::MoveAndCopyTest{
    use 0x1::debug;
    use 0x01::MoveAndCopyModule;


    #[test]
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