use std::convert::TryInto;

fn main(){
    let str = String::from("Davis is here");
    println!("distance: {}", find_distance_btw_given_chars_in_sentence(&str, 'a', 'h'));
    
}
/* find distance between given chars in a agiven sentence
 * Assumptions: 
 * 1. First char will be present in sentence before second char
 * 2. Both given chars will be different
 * 3. 
 */
fn find_distance_btw_given_chars_in_sentence(str :&str, first: char, second :char)->i32 {
    let first_idx = str.find(first);
    let idx1 :i32;
    match first_idx {
         Some(first_idx) =>  idx1 = first_idx.try_into().unwrap(),
         None        =>   idx1 = -1 
    }
 
    let second_idx = str.rfind(second);
    let idx2 :i32;
    match second_idx {
         Some(second_idx) =>  idx2 = second_idx.try_into().unwrap(),
         None        =>   idx2 = -1 
    }

    idx2 - idx1 
 
}
