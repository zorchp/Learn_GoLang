package main

import "fmt"

func t1() {
	x := []int{1, 2, 3}
	y := []int{1, 5: 4, 6, 10: 100, 15}
	println(x)
	println(y)
	for i, v := range y {
		print(i, " ", v, ",")
	}
}

func t2() {
	x := []int{}
	x = append(x, 12)
	for _, v := range x {
		println(v)
	}
}

func t3() {
	var x []int
	fmt.Println(x, len(x), cap(x))
	x = append(x, 10)
	fmt.Println(x, len(x), cap(x))
	x = append(x, 11)
	fmt.Println(x, len(x), cap(x))
	x = append(x, 12)
	fmt.Println(x, len(x), cap(x))
	x = append(x, 12)
	fmt.Println(x, len(x), cap(x))
	x = append(x, 12)
	fmt.Println(x, len(x), cap(x))
	x = append(x, 12)
	// [] 0 0
	// [10] 1 1
	// [10 11] 2 2
	// [10 11 12] 3 4
	// [10 11 12 12] 4 4
	// [10 11 12 12 12] 5 8
}

func t4() {
	// 指定长度的切片
	x := make([]int, 5)
	x = append(x, 10)
	fmt.Println(x)              //[0 0 0 0 0 10]
	y := make([]int, 5, 10)     // len=5,cap=10
	fmt.Println(len(y), cap(y)) // 5 10
}

func t5() {
	x := make([]int, 0, 5)
	x = append(x, 1, 2, 3, 4) // x=[1,2,3,4]
	// version 1
	// y := x[:2]                // y=[1,2]
	// z := x[2:]                // z=[3,4]

	// version 2: 完全派生表达式
	// 第三部分, 定义了父切片容量中的最后位置
	y := x[:2:2]  //
	z := x[2:4:4] //

	fmt.Println(cap(x), cap(y), cap(z)) // 5 5 3
	y = append(y, 30, 40, 50)           // y=[1,2,30,40,50]
	x = append(x, 60)
	z = append(z, 70)
	fmt.Println(x)
	fmt.Println(y)
	fmt.Println(z)
	// puzzle
	/* 5 5 3
	   [1 2 30 40 70]
	   [1 2 30 40 70]
	   [30 40 70] */
	// version 2
	/* 	5 2 2
	[1 2 3 4 60]
	[1 2 30 40 50]
	[3 4 70]
	*/
}

func main() {
	// t1()
	// t2()
	// t3()
	// t4()
	t5()
}
