package main

import "fmt"

func create_array() {
	// use `var`
	var arr1 = [3]int{1, 2, 3}
	fmt.Println(arr1)
	var arr2 [3]int = [3]int{1, 2, 3}
	fmt.Println(arr2)

	arr3 := [3]int{1, 2, 3}
	fmt.Println(arr3) // maybe a best way
}

func slice_array() { // slice as ref to array
	a1 := [10]int{1, 2, 3}
	a2 := a1[1:3] // [1,2)
	var a3 []int = a1[1:3]
	fmt.Println(a2)
	fmt.Println(a3)
	// [2 3]
	// [2 3]
	a3[1] = 999
	fmt.Println(a1) // [1 2 999 0 0 0 0 0 0 0]
	fmt.Println(a3) // [2 999]
}

func slice_array_1() {
	q := []int{2, 3, 5, 7, 11, 13}
	fmt.Println(q) // [2 3 5 7 11 13]

	r := []bool{true, false, true, true, false, true}
	fmt.Println(r) // [true false true true false true]

	s := []struct {
		i int
		b bool
	}{
		{2, true},
		{3, false},
		{5, true},
		{7, true},
		{11, false},
		{13, true},
	}
	fmt.Println(s)
	// [{2 true} {3 false} {5 true} {7 true} {11 false} {13 true}]
}

func slice_default_args() {
	q := []int{2, 3, 5, 7, 11, 13}
	fmt.Println(q[:])
	fmt.Println(q[1:])
	fmt.Println(q[:2])
	// [3 5 7 11 13]
	// [2 3]
}

func printSlice(s []int) {
	fmt.Printf("len=%d cap=%d %d\n", len(s), cap(s), s)
}

func t1() {
	q := []int{2, 3, 5, 7, 11, 13}
	printSlice(q)
	printSlice(q[:3])
	q = q[:0] //clear
	printSlice(q)
	q = q[:4]
	printSlice(q)
	q = q[2:]
	printSlice(q)
	// len=6 cap=6 [2 3 5 7 11 13]
	// len=3 cap=6 [2 3 5]
	// len=0 cap=6 []
	// len=4 cap=6 [2 3 5 7]
	// len=2 cap=4 [5 7]
}

func t2() {
	//nil slice
	var s []int
	fmt.Println("this is nil array : ", s, len(s), cap(s))
	if s == nil {
		fmt.Println("nil!!")
	}
	// this is nil array :  [] 0 0
	// nil!!
}

func t3() {
	// make slice , dynamic array
	a := make([]int, 5)
	printSlice(a) //len=5 cap=5 [0 0 0 0 0]
	b := make([]int, 0, 5)
	printSlice(b) //len=0 cap=5 []

	c := b[:2]
	printSlice(c) // len=2 cap=5 [0 0]
	fmt.Println(&c)
	// because of capacity expanded, d != c
	d := c[2:5]
	printSlice(d) // len=3 cap=3 [0 0 0]
	fmt.Println(&d)
	d[0] = 999
	printSlice(c) // len=2 cap=5 [0 0]
	printSlice(d) // len=3 cap=3 [999 0 0]
	c[0] = 10
	printSlice(c) // len=2 cap=5 [10 0]
	printSlice(d) // len=3 cap=3 [999 0 0]
}

func t4() {
	//append
	var s []int
	printSlice(s)

	s = append(s, 0)
	printSlice(s)
	s = append(s, 1)
	printSlice(s)
	s = append(s, 2, 3, 4)
	printSlice(s)
	s = append(s, 5)
	printSlice(s)
	s = append(s, 6)
	printSlice(s)
	// len=0 cap=0 []
	// len=1 cap=1 [0]
	// len=2 cap=2 [0 1]
	// len=5 cap=6 [0 1 2 3 4]
	// len=6 cap=6 [0 1 2 3 4 5]
	// len=7 cap=12 [0 1 2 3 4 5 6]
}

func t5() {
	//range
	pow := []int{1, 2, 4, 8, 16, 32, 64}

	for i, v := range pow {
		fmt.Println(i, v)
	}
	for _, v := range pow {
		fmt.Println(v)
	}
	// for i, _ := range pow {
	//	fmt.Println(i)
	// }
	for i := range pow {
		fmt.Println(i)
	}
}

func t6() {
	b := [2]string{"a", "b"} // array
	fmt.Println(b, len(b), cap(b))
	c := []string{"a", "c"} // slice
	fmt.Println(c, len(c), cap(c))
	d := [...]string{"a", "d"} //array
	fmt.Println(d, len(c), cap(d))
	// [a b] 2 2
	// [a c] 2 2
	// [a d] 2 2
}

func t7() {
	// 2D slice
	d2 := make([][]int, 10)
	tmp := make([]int, 3)
	d2[0] = tmp
}

func main() {
	// create_array()
	// slice_array()
	// slice_array_1()
	// slice_default_args()

	// slice test all
	// t1()
	// t2()
	// t3()
	// t4()
	// t5()
	// t6()
	t7()
}
