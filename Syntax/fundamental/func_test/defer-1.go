package main

import "fmt"

func t1() {
	defer fmt.Println("2")
	fmt.Println("1")
	// 1
	// 2
}

func t2() {
	fmt.Println("counting...")

	for i := 0; i < 10; i++ {
		defer fmt.Println(i)
	}
	fmt.Println("done")
} // when func return, call defer(in stack)

func main() {
	// t1()
	t2()
}
