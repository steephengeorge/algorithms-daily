package main

import (
    "fmt";
)

func main(){
    v := []int64{ 1, 3, 5, 9, 14}
    contaminationSpread(v, 5)  
} 
/*
 * Given n number of persons in a park. One of them is having a virus. But we don't know whom. 
 * Also, the position of all persons is given. A contaminated person can spread it up to d distance.
 *  When the best case (Spread is minimum) and the worst case(Spread is maximum) would occur?e.g.
   N=5
   Position=[1, 3, 5, 9, 14]
   d=5
   Remark: There is vagueness in question, position does not mean distance.
   If we consider position as distance, what is the reference point for this distance.
   So lets assume people are in line in park and each position meant the unit of measure from the origin. 
 */

func contaminationSpread(v []int64, distance int64){
   var cache []int64
   for i := 0; i< len(v) - 1; i++ {
       var spread int64 = 0
       for j := i + 1; j < len(v); j++ {
           if abs(v[i] - v[j]) <= distance {
               spread++
           } 
       }
       cache = append(cache, spread);
   }  
   var min int64 = int64(len(v) + 1)

   for i, e := range cache{
       //fmt.Printf("e: %d\n", e)
       if i == 0 || e < min {
           min = e;
       }
   } 
   var max int64 = -1
   for i, e := range cache{
       if i == 0 || e > max {
           max  = e
       }
   } 
   fmt.Printf("min : %d \n", min)
   fmt.Printf("max : %d \n", max)  
}
func abs(val int64) int64{
     if val < 0 {
        return -val
     }
     return val
}
