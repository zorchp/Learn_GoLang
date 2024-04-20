package main

import (
	"fmt"
	"reflect"
	"runtime"
	"unsafe"
)

func t1() {
	s := "hello"
	sHdr := (*reflect.StringHeader)(unsafe.Pointer(&s))
	fmt.Println(sHdr.Len) // 5

	for i := 0; i < sHdr.Len; i++ {
		bp := *(*byte)(unsafe.Pointer(sHdr.Data + uintptr(i)))
		fmt.Println(string(bp))
	}
	fmt.Println()
	runtime.KeepAlive(s)
}

func t2() {
	s := []int{10, 20, 30}
	sHdr := (*reflect.SliceHeader)(unsafe.Pointer(&s))
	fmt.Println(sHdr.Len) // 3
	fmt.Println(sHdr.Cap) // 3

	intByteSize := unsafe.Sizeof(s[0])
	fmt.Println(intByteSize) // 8

	for i := 0; i < sHdr.Len; i++ {
		intVal := *(*int)(unsafe.Pointer(sHdr.Data + intByteSize*uintptr(i)))
		fmt.Println(intVal)
	}
}

func main() {
	// t1()
	t2()
}
