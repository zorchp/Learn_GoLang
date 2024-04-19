package main

import "fmt"

func main() {
	a := [...]int{1, 2, 3}
	b := &a
	fmt.Println(a[0], a[1])
	fmt.Println(b[0], b[1])
	for i, v := range b {
		fmt.Println(i, v)
	}
}
