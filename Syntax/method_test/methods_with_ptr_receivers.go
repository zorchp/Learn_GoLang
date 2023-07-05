package main

import (
	"fmt"
	"math"
)

type Vertex struct {
	X, Y float64
}

// member for Vertex class
func (v *Vertex) Scale(f float64) {
	v.X *= f
	v.Y *= f
}

// member for Vertex class
func (v *Vertex) Abs() float64 {
	return math.Sqrt(v.X*v.X + v.Y*v.Y)
}

func t1() {
	// v := Vertex{3, 4}
	v := &Vertex{3, 4}
	fmt.Printf("%+v, %v\n", v, v.Abs())
	v.Scale(5)
	fmt.Printf("%+v, %v\n", v, v.Abs())

	// &{X:3 Y:4}, 5
	// &{X:15 Y:20}, 25
}

func main() {
	t1()
}
