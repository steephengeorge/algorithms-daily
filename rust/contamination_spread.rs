

fn main(){
     let mut pos = vec![1i32,1, 3, 5, 9, 14 ];
     contamination_spread(pos.as_mut_slice(), 5);
}

fn contamination_spread(v : &mut [i32], dist: i32){

   let mut cache = Vec::new();
   for i in 0..v.len() - 1{
       let mut spread = 0;
       for j in i+1..v.len(){
           if (v[i] - v[j]).abs() <= dist{
               spread += 1; 
           } 
      }
      cache.push(spread);
   }  
   let min = cache.iter().min();
   match min{
       Some(min) => println!( "Min value: {}", min ),
       None      => println!( "Vector is empty" )
   }
   let max = cache.iter().max();
   match max{
       Some(max) => println!( "Max value: {}", max ),
       None      => println!( "Vector is empty" )
   }
}
