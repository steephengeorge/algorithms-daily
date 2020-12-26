use std::collections::HashMap;

fn main(){

     let s = String::from("abcbae");
     println!("{}", find_non_repeated_char(&s[..]));
}
fn find_non_repeated_char(s :&str) -> char{

    let mut cache = HashMap::<&u8, u32>::new();
    for(_i, item) in s.as_bytes().iter().enumerate()  {
        cache.entry(item).or_insert(0); 
        cache.insert(item, 1 + cache[item]);
    } 
    let mut result =' ';
    for(_i, item) in s.as_bytes().iter().enumerate()  {
        let value = cache[item];
        if value == 1 { 
            result = *item as char; 
            break;
        }
    } 
    result  
}
