package main

import "fmt"

func t1() {
	x := []int{1, 2, 3, 4}
	y := make([]int, 4)
	num := copy(y, x) // y<-x
	fmt.Println(num)  // 4
}

func t2() {
	x := []int{1, 2, 3, 4}
	y := make([]int, 2)
	num := copy(y, x)
	fmt.Println(y, num) // [1 2] 2
}

func t3() {
	x := []int{1, 2, 3, 4}
	num := copy(x[:3], x[1:])
	fmt.Println(num, x) // 3 [2 3 4 4]
}

func t4() {
	x := []int{1, 2, 3, 4}
	d := [4]int{5, 6, 7, 8}
	y := make([]int, 2)
	copy(y, d[:])  // [:] is need
	fmt.Println(y) // [5 6]
	copy(d[:], x)
	fmt.Println(d) // [1 2 3 4]
}

func main() {
	// t1()
	// t2()
	// t3()
	t4()
}
