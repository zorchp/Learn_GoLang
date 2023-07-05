package main

import (
	"fmt"
	"math"
)

// type alias
type fun_type = func(float64, float64) float64

// equal to
// type fun_type func(float64, float64) float64

func calc(fn fun_type) float64 {
	return fn(3, 4)
}

func t1() {
	hypot := func(x, y float64) float64 {
		return math.Sqrt(x*x + y*y)
	}
	fmt.Println(hypot(5, 12))   //13
	fmt.Println(calc(hypot))    //5
	fmt.Println(calc(math.Pow)) //81
}

func main() {
	t1()
}
