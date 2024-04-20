package main

import (
	"fmt"
	"reflect"
)

func t1() {
	i := 10
	iv := reflect.ValueOf(&i)
	ivv := iv.Elem() // ptr address
	fmt.Println(iv)

	ivv.SetInt(20)
	fmt.Println(ivv)
}

// method 1
func changeInt(i *int) {
	*i = 20
}

// method 2
func changeIntReflect(i *int) {
	iv := reflect.ValueOf(i)
	iv.Elem().SetInt(21)
}

func t2() {
	//
	i := 10
	changeInt(&i)
	fmt.Println(i)

	changeIntReflect(&i)
	fmt.Println(i)
}

func main() {
	// t1()
	t2()
}
