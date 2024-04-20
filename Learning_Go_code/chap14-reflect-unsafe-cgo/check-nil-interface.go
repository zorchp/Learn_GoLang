package main

import (
	"fmt"
	"reflect"
)

func hasNoValue(i interface{}) bool {
	iv := reflect.ValueOf(i)
	if !iv.IsValid() {
		return true
	}
	switch iv.Kind() {
	case reflect.Ptr, reflect.Slice, reflect.Map, reflect.Func, reflect.Interface:
		return iv.IsNil()
	default:
		return false
	}
}

type Tester interface {
	test()
}

type client struct{}

func main() {
	var t Tester
	fmt.Println(hasNoValue(t))
	var u interface{}
	fmt.Println(hasNoValue(u))

	t1 := client{}
	fmt.Println(hasNoValue(t1))
}
