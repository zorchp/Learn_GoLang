package main

import "fmt"

func t1() {
	// a := make([]int, 0, 80)
	a := make([]int, 0)
	for i := 0; i < 100; i++ {
		a = append(a, i) // 2倍(原始 size的二倍)扩容机制, 类似 vector
		fmt.Println(len(a), " : ", cap(a))
	}
	fmt.Println(a)
}

func main() {
	t1()
}
