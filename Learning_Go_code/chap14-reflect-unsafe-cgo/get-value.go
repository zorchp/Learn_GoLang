package main

import (
	"fmt"
	"reflect"
)

func t1() {
	s := []string{"a", "b", "c"}
	sv := reflect.ValueOf(s)
	fmt.Println(sv)
	s2 := sv.Interface().([]string)
	fmt.Println(s2)
}

func main() {
	t1()
}
