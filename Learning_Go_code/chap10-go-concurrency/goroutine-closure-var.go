package main

import "fmt"

func main() {
	a := []int{2, 4, 6, 8, 10}
	ch := make(chan int, len(a))
	for _, v := range a {
		// go func() {
		// 	ch <- v * 2
		// }()
		go func(v int) {
			ch <- v * 2
		}(v)
		// 当 goroutine 使用一个值可能改变的变量时, 我们应将该变量的当前值传递给 goroutine
	}
	for i := 0; i < len(a); i++ {
		fmt.Println(<-ch)
	}
}
