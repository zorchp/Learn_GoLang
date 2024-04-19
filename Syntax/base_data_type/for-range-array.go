package main

import "fmt"

func main() {
	var times [5][0]int
	// 第二维度是 0 使得整个数组的空间占用依然是 0. 没有付出额外的内存代价. 
	for range times {
		fmt.Println("hello")
	}
}
