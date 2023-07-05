package main

import (
	"fmt"
)

func t1() {
	i, j := 1, 2
	pi := &i // pi 指向 i
	fmt.Println("pi=", pi)
	fmt.Println("*pi=", *pi)
	*pi = 10
	fmt.Println("pi=", pi)
	// pi= 0x14000018100
	// *pi= 1

	pi = &j
	*pi = *pi / 10
	fmt.Println("j=", j)
	// pi= 0x14000018100
	// j= 0
}

func t2() {
	// null ptr
	i := 10
	var p *int
	var q *int = nil
	// pnil:= ([]int)(nil) // can be convert
	if q == p {
		fmt.Println("nil ptr")
	}
	fmt.Printf("%v, %T\n", p, p)
	p = &i
	fmt.Printf("%v, %T\n", p, p)
}

func main() {
	// t1()
	t2()
}
