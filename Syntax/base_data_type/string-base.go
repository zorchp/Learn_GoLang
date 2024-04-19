package main

import "fmt"

func main() {
	s := [2]string{"hello", "world"}
	fmt.Println(s)
	// 字符串的底层数据:
	t := [...]byte{
		'h', 'e', 'l', 'l', 'o', ' ', 'w', 'o', 'r', 'l', 'd',
	}
	fmt.Println(t)
}
