package main

import (
	"fmt"
	"math"
)

type Vertex struct {
	X, Y float64
}

func Abs(v Vertex) float64 {
	return math.Sqrt(v.X*v.X + v.Y*v.Y)
}

func Scale(v *Vertex, f float64) {
	v.X *= f
	v.Y *= f
}

func t1() {
	v := Vertex{3, 4}
	Scale(&v, 10)
	fmt.Println(Abs(v)) //50
}

func (v *Vertex) Scale1(f float64) {
	v.X *= f
	v.Y *= f
}
func ScaleFunc(v *Vertex, f float64) {
	v.X *= f
	v.Y *= f
}

func t2() {
	v := Vertex{3, 4}
	v.Scale1(2)
	ScaleFunc(&v, 10)

	p := &Vertex{4, 3}
	p.Scale1(3)
	ScaleFunc(p, 8)
}

func (v Vertex) Abs() float64 {
	return math.Sqrt(v.X*v.X + v.Y*v.Y)
}
func AbsFunc(v Vertex) float64 {
	return math.Sqrt(v.X*v.X + v.Y*v.Y)
}

func t3() {
	v := Vertex{3, 4}
	fmt.Println(v.Abs())    //5
	fmt.Println(AbsFunc(v)) //5

	p := &Vertex{4, 3}
	fmt.Println(p.Abs())     //5
	fmt.Println(AbsFunc(*p)) //5
}

func main() {
	// t1()
	// t2()
	t3()
}
