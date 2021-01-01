fn hello_world(){

    "Hello world!"
}

[#cfg(test)]
mod tests{
    [#test]
    fn hello_world_test(){
        assert_eq!("Hello world!", hello_world())
    }
}
