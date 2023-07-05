package main

import "fmt"

func describe(i interface{}) {
	fmt.Printf("(%v, %T)\n", i, i)
}

func t1() {
	// interface{} is a void type (class)
	var i interface{}
	describe(i)

	i = 42
	describe(i)

	i = "hello"
	describe(i)
	// (<nil>, <nil>)
	// (42, int)
	// (hello, string)
}

func main() {
	t1()
}
