package main

import (
	"fmt"
	"math"
)

func Sqrt(x float64) float64 {
    result := 1.0;
	for z := 1.0; math.Abs(x - (z*z)) > 0.00000000001 ;  {
	    z -= (z * z - x)/ (2* z)
		result = z		
	}
	return result
}

func main() {
	fmt.Println(Sqrt(16))
}

