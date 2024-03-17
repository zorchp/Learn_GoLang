package main

import "fmt"

func main() {
	var s string = "hello there"
	var b byte = s[6]
	fmt.Println(s[4:7])
	fmt.Println(b)
	fmt.Println(string(b))
	// o t
	// 116
	// t
}
