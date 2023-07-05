package main

import (
	"fmt"
)

func do(i interface{}) {
	switch v := i.(type) {
	case int:
		fmt.Printf("Twice %v is %v \n", v, v*2)
	case string:
		fmt.Printf("%q is %v bytes long\n ", v, len(v))
	default:
		fmt.Printf("unknown type %T", v)
	}
}

func t1() {
	do(21)
	do("hello")
	do(true)
	// Twice 21 is 42
	// "hello" is 5 bytes long
	// unknown type bool
}

func main() {
	t1()
}
