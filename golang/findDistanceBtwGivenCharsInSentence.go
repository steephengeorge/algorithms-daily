package main

import (
       "fmt"
       "strings"
)

func main(){
     str := "Davis is here" 
     fmt.Println(find_distance_btw_given_chars_in_sentence(str, 'a', 'h')); 
}
/* find distance between given chars in a agiven sentence
 * Assumptions: 
 * 1. First char will be present in sentence before second char
 * 2. Both given chars will be different
 * 3. 
 */
func find_distance_btw_given_chars_in_sentence(str string, first byte, second byte) int{

     firstIdx := strings.Index(str, string(first)) 
     secondIdx := strings.Index(str, string(second))
     return secondIdx - firstIdx
}
