package main

import (
	"fmt"
	"kpkg"
)

func main() {
	fmt.Println("main-in pkg1")
	kpkg.SayHello()
	// main-in pkg1
	// hello kkk
}
