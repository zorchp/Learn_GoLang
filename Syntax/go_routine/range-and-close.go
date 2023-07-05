package main

import "fmt"

func fibonacci(n int, c chan int) {
	x, y := 0, 1
	for i := 0; i < n-1; i++ {
		c <- x
		x, y = y, x+y
	}
	// just sender can close channel
	close(c) // close a channel when we don't use channel
	// if no close : fatal error: all goroutines are asleep - deadlock!
	// c <- x //panic: send on closed channel
}

func main() {
	c := make(chan int, 10)
	go fibonacci(cap(c), c)
	for i := range c {
		fmt.Println(i)
	}
}
