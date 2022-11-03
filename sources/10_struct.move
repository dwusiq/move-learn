module 0x01::StructModule{
    struct SchoolClass has drop{
        id:u64,
        student_count:u64
    }

    public fun initClass(sid:u64,sstudent_count:u64):SchoolClass{
        SchoolClass{
            id:sid,
            student_count:sstudent_count
        }
    }

    public fun getId(c:SchoolClass):u64{
        return (c.id)
    }
}


module 0x01::StructTest{
    use 0x1::debug;
    use 0x01:: StructModule;

    #[test]
    fun main(){
        let (a,b) = (2,30);
        let sc = StructModule::initClass(a,b);
        let id:u64 = StructModule::getId(sc);
        debug::print(&id);
    }
}