#[allow(dead_code)]
pub fn hello_world() -> &'static str{

        "Hello world!"
}
#[cfg(test)]
mod tests {
    #[test]
    fn hello_world_test(){
        use crate::chapter_1::hello_world;
        assert_eq!("Hello world!", hello_world())
    }
}

