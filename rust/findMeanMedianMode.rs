use std::convert::TryInto;
use std::collections::HashMap;

fn main(){
    let mut v = vec![12,34, 45, 12, 23, 12, 11, 45, 67, 78, 4, 7, 9, 14];
    for i in &v{
        println!("{}", *i);
    }
    println!("Mean:{}", find_mean(&v)); 
    println!("Mean:{}", find_median(&mut v)); 
    println!("Mode:{}", find_mode(&v)); 
}
/*
Given a list of integers, use a vector and return the mean (the average value), 
median (when sorted, the value in the middle position), and mode (the value 
that occurs most often; a hash map will be helpful here) of the list.
*/
fn find_mean(v: &Vec<i32>) -> f64{
    let mut sum = 0.0;
    for i in v {
       sum += *i as f64; 
    }  
    let count :i32 = v.len().try_into().unwrap();
 
    sum / count as f64 
}

fn find_median(v: &mut Vec<i32>) -> f64{
    v.sort();
    let count :i32 = v.len().try_into().unwrap();
    if count % 2 == 0 {
       let mid_1 = v[((count - 1)/2) as usize];
       let mid_2 = v[(((count - 1)/2) + 1) as usize];
       ((mid_1 + mid_2)/ 2) as f64
    }else {
        v[(((count -1)/2) + 1) as usize] as f64

    }
}

fn find_mode(v: &Vec<i32>) -> f64{
    let mut nums = HashMap::new();
    for i in v{
         let count = nums.entry(*i).or_insert(0);
         *count += 1;
    }
    let mut result = -1;
    let mut count = std::i32::MIN; 
    for (k, v) in &nums{
        if count < *v {
             result = *k;
             count = *v;
        }
    }
    return result as f64; 
}

