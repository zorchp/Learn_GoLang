package main

import (
	"fmt"
	"unsafe"
)

func main() {
	s := "hello, world"
	hello := s[:5]
	world := s[7:]
	s1 := "hello, world"[:5]
	s2 := "hello, world"[7:]
	// 相同的字符串面值常量通常是对应同一个字符串常量
	fmt.Println(hello, world, s1, s2)
	// fmt.Println(len(s), (*reflect.StringHeader)(unsafe.Pointer(&s)).Len)
	fmt.Println(len(s), unsafe.StringData(s))
}
