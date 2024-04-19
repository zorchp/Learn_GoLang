package main

import "fmt"

func main() {
	// c1 := make(chan [0]int)
	c1 := make(chan struct{})
	go func() {
		fmt.Println("c1")
		// c1 <- [0]int{}
		c1 <- struct{}{}
	}()
	<-c1
}
