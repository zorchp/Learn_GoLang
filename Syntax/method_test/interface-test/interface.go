package main

import (
	"fmt"
	"math"
)

type Abser interface {
	Abs() float64
}

type Abser_val interface {
	Abs_val() float64
}

type MyFloat float64

// bind method Abs for MyFloat class
func (f MyFloat) Abs() float64 {
	if f < 0 {
		return float64(-f)
	}
	return float64(f)
}
func (f MyFloat) Abs_val() float64 {
	if f < 0 {
		return float64(-f)
	}
	return float64(f)
}

type Vertex struct {
	X, Y float64
}

func (v *Vertex) Abs() float64 {
	return math.Sqrt(v.X*v.X + v.Y*v.Y)
}
func (v Vertex) Abs_val() float64 {
	return math.Sqrt(v.X*v.X + v.Y*v.Y)
}

func t1() {
	var a Abser
	f := MyFloat(-math.Sqrt2)
	v := Vertex{3, 4}

	a = f
	a = &v

	fmt.Println(a.Abs()) //5
}
func t2() {
	var a Abser_val
	f := MyFloat(-math.Sqrt2)
	v := Vertex{3, 4}

	a = f
	a = v

	fmt.Println(a.Abs_val()) //5
}

func main() {
	// t1()
	t2()
}
