package main

import "fmt"

func main(){
   fmt.Println(findNonRepeatedChar("abcbae"))
}

func findNonRepeatedChar(str string) string{
    cache := make(map[string]int)
    for _ , v := range str{
        //fmt.Printf("v:%s \n" , string(v))   
        if val, ok := cache[string(v)]; ok{
              //fmt.Printf("v:%s , val: %d\n" , string(v), val)   
              cache[string(v)] = val + 1 
              //fmt.Printf("v:%s , val: %d\n" , string(v), cache[string(v)])   
              continue;
        }
        cache[string(v)] =  1 
     }
     //Printing cache
     //for k, v := range cache{
     //   fmt.Printf("%s: %d\n", k, v)
     //}
     var result = string(' ')
     for _ , v := range str{
         //fmt.Printf("v:%s , val: %d\n" , string(v), cache[string(v)])   
         if( cache[string(v)] == 1){
             result = string(v) 
             break
         }
     } 
     return result
}


