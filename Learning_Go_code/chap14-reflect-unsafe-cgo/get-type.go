package main

import (
	"fmt"
	"reflect"
)

type Foo struct {
	A int
	B string
}

func t1() {
	var x int
	xt := reflect.TypeOf(x)
	fmt.Println(xt.Name())

	f := Foo{}
	ft := reflect.TypeOf(f)
	fmt.Println(ft.Name())

	xpt := reflect.TypeOf(&x)
	fmt.Println(xpt.Name())

	// 关联类型的类型名和类别
	fmt.Println(xpt.Elem().Name())
	fmt.Println(xpt.Elem().Kind())
}

type Foo1 struct {
	A int    `myTag:"value"`
	B string `myTag:"value2"`
}

func t2() {
	var f Foo1
	ft := reflect.TypeOf(f)
	for i := 0; i < ft.NumField(); i++ {
		curField := ft.Field(i)
		fmt.Println(curField.Name, curField.Type.Name(), curField.Tag.Get("myTag"))
	}
}

func main() {
	// t1()
	t2()
}
