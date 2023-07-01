package main

import "fmt"

func main() {
	// a := [3]int{1, 2, 3}
	 var a [3]int;a= {1,2,3}
	for k, v := range a {
		if k == 0 {
			a[0], a[1] = 100, 200
		}
		a[k] = 100 + v
	}
	fmt.Print(a) // 数组    101  102  103
}
