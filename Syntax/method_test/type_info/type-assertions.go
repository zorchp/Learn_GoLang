package main

import "fmt"

func main() {
	var i interface{} = "hello"

	//type assert
	s := i.(string)
	fmt.Println(s)

	s, ok := i.(string)
	fmt.Println(s, ok)

	f, ok := i.(float64)
	fmt.Println(f, ok)
	// hello
	// hello true
	// 0 false

	// f := i.(float64)
	// no new variables on left side of :=
}
