package main

import (
	"fmt"
	"kpkg"
)

func main() {
	fmt.Println("main-in pkg2")
	kpkg.SayHello()
	// main-in pkg2
	// hello kkk
}
