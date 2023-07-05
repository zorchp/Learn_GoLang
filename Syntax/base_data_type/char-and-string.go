package main

import "fmt"

func t1() {
	b1 := 'a'
	fmt.Printf("%v, %T\n", b1, b1)
	// 97, int32

	var b2 byte = 'a'
	fmt.Printf("%v, %T\n", b2, b2)
	// 97, uint8

	var b3 int = 'a'
	fmt.Printf("%v, %T\n", b3, b3)
	// 97, int
}

func t2() {
	//byte array as string
	s := []byte{'h', 'e', 'l', 'l', 'o'}
	fmt.Printf("%+v, %T\n", s, s)
	// [104 101 108 108 111], []uint8

}

func main() {
	// t1()
	t2()
}
