package main

import "fmt"

/*
	extern int add(int a, int b);
*/
import "C"

//export doubler
func doubler(i int) int {
	return i * 2
}

func main() {
	sum := C.add(3, 2)
	fmt.Println(sum)
}
