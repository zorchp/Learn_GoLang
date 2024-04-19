package main

import "fmt"
// go  数组是值语义, 并不是隐式的指向第一个元素的指针, 而是一个完整的值. 
// 当一个数组变量被赋值或者被传递的时候, 实际上会复制整个数组. 

func main() {
	var a [3]int
	b := [...]int{1, 2, 3}
	c := [...]int{2: 3, 1: 2} // 其余值初始化为 0
	d := [...]int{1, 2, 4: 5, 6}
	fmt.Println(a)
	fmt.Println(b)
	fmt.Println(c)
	fmt.Println(d)
}
