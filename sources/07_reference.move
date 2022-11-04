module 0x01::ReferenceModule{

    //will throw "Unused assignment or binding for local 'a'"
    // public fun swapFail(a:u64,b:u64){
    //     let tmp = a;
    //     a = b;
    //     b = tmp;
    // }

    public fun swapSuccess(a:&mut u64,b:&mut u64){
        let tmp = *a;
        *a = *b;
        *b = tmp;
    }



}