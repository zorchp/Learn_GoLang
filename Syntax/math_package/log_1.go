package main

import (
	"fmt"
	"math"
)

func t1() {
	x := 2.718281828
	ans1 := math.Log(float64(x))   // log to the base of `e`
	ans2 := math.Log10(float64(x)) // log to the base of 10
	fmt.Println(ans1)
	fmt.Println(ans2)
}

func main() {
	t1()
}
