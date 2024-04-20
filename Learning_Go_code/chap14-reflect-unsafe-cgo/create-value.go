package main

import (
	"fmt"
	"reflect"
)

func t1() {
	stringType := reflect.TypeOf((*string)(nil)).Elem()
	stringSliceType := reflect.TypeOf([]string(nil))
	fmt.Println(stringType)
	fmt.Println(stringSliceType)
	// string
	// []string

	ssv := reflect.MakeSlice(stringSliceType, 0, 10)
	sv := reflect.New(stringType).Elem()
	sv.SetString("hello")
	ssv = reflect.Append(ssv, sv)
	ss := ssv.Interface().([]string)
	fmt.Println(ss)
	//[hello]
}

func main() {
	t1()
}
