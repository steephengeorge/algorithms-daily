package main

import (
	"strings"
        "golang.org/x/tour/wc"
)

func WordCount(s string) map[string]int {
	var myMap = make(map[string]int)
    arr := strings.Fields(s)
	for _, v := range arr{
	    e, ok := myMap[v]
		if  ok{
		     myMap[v] = e + 1
		}else{
		     myMap[v] = 1
		}	
	}
	
	return myMap
}

func main() {
    wc.Test(WordCount)
}

