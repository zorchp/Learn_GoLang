package main

import "fmt"

func main() {
	vv := []int{2, 4, 6, 8}
	for _, v := range vv {
		v *= 2
	}
	fmt.Println(vv) //[2 4 6 8]
}
