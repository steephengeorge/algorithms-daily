package main

import "fmt"

// fibonacci is a function that returns
// a function that returns an int.
func fibonacci() func() int {
     curr := 0
	 prev := 1
     return func() int{
	     if curr == 0 {
		     temp := curr + prev
		     prev = curr
		     curr = temp
			 return curr - temp;
		 }		     
	      temp := curr + prev
		  prev = curr
		  curr = temp
		  return temp
	 }
}

func main() {
	f := fibonacci()
	for i := 0; i < 10; i++ {
		fmt.Println(f())
	}
}

