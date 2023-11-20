package main

import "fmt"

func t1() {
	// a := make([]int, 5) // not right [0 0 0 0 0 1 2 3 4 5]
	a := make([]int, 0, 5) // ok [1 2 3 4 5]
	// a := make([]int) // error
	// a := make([]int, 0) // ok, [1 2 3 4 5]

	for i := 1; i <= 5; i++ {
		a = append(a, i)
	}
	fmt.Println(a)
}

func main() {
	t1()

}
