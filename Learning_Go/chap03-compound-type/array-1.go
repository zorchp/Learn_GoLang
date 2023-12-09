package main

import "fmt"

func main() {
	var x [3]int
	fmt.Println(x)
	y := [3]int{10, 2}
	fmt.Println(y)
	z := [...]int{1, 2, 3, 4}
	w := [4]int{1, 2, 3, 4}
	print(z == w)
	println()
	print(len(w))
}
