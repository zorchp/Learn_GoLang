package main

import (
	"fmt"
	"math"
)

type Vertex struct {
	X, Y float64
}

func (v Vertex) Abs() float64 {
	// mathod: function with accepter's args
	return math.Sqrt(v.X*v.X + v.Y*v.Y)
}

func t1() {
	v := Vertex{3, 4}
	fmt.Println(v.Abs()) //5
}

type MyFloat float64

func (f MyFloat) Abs() float64 { // func overload
	if f < 0 {
		return float64(-f)
	}
	return float64(f)
}

func t2() {
	// mathod for non-struct
	f := MyFloat(-math.Sqrt2)
	fmt.Println(f.Abs()) //1.4142135623730951
}

func main() {
	t1()
	t2()
}
