package main

import (
	"fmt"
	"math"
)

type I interface { // I is a interface type, method is M
	M() // method
}

type T struct {
	S string
}

func (t *T) M() {
	fmt.Println(t.S)
}

type F float64

// specify inplement of interface
func (f F) M() {
	fmt.Println(f)
}

func describe(i I) {
	fmt.Printf("(%v, %T)\n", i, i)
}

func t1() {
	var i I
	i = &T{"hello"}
	describe(i)
	i.M()

	i = F(math.Pi)
	describe(i)
	i.M()
	// (&{hello}, *main.T)
	// hello
	// (3.141592653589793, main.F)
	// 3.141592653589793
}

// new interface , with method M1()
type I1 interface {
	M1()
}

func describe1(i I1) {
	fmt.Printf("(%v, %T)\n", i, i)
}
func (t *T) M1() {
	if t == nil {
		fmt.Println("<nil>")
		return
	}
	fmt.Println(t.S)

}

func t2() {
	// test for nil value interface
	var i I1
	var t *T
	i = t
	// can be called
	describe1(i)
	i.M1() // as nil value

	i = &T{"hello"}
	describe1(i)
	i.M1()
	// (<nil>, *main.T)
	// <nil>
	// (&{hello}, *main.T)
	// hello
}

func t3() {
	// fmt.Println(nil) // <nil>
	var i I1
	describe1(i)
	// nil interface cannot be called
	i.M1()
	// (<nil>, <nil>)
	// panic: runtime error: invalid memory address or nil pointer dereference
}

func main() {
	// t1()
	// t2()
	// t3()
}
