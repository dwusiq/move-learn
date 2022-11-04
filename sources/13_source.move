module 0x01::SourceModule{
    use 0x1::vector;

    struct Item has drop,key,store,copy{value:u64}
    struct Collection has drop,key,store,copy{items:vector<Item>}

    public fun init_source(sn:&signer){
        move_to<Collection>(sn,Collection{items:vector::empty<Item>()});
    }

    public fun is_exist(addr:address):bool{
        exists<Collection>(addr)
    }

    public fun add_item(addr:address,i:u64)acquires Collection{
        let coll = borrow_global_mut<Collection>(addr);
        vector::push_back<Item>(&mut coll.items, Item{value:i});
    }

    public fun get_length(addr:address):u64 acquires Collection{
        let coll = borrow_global<Collection>(addr);
        vector::length<Item>(&coll.items)
    }

    public fun get_by_index(addr:address,i:u64):u64 acquires Collection{
           let coll = borrow_global<Collection>(addr);
           vector::borrow<Item>(& coll.items,i).value
    }

    public fun destroy(addr:address) acquires Collection{
        let coll = move_from<Collection>(addr);
        let Collection{items:_} = coll;
    }
}
