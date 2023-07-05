package main

import (
	"fmt"
	"time"
)

func main() {
	tick := time.Tick(1 * time.Millisecond)
	boom := time.After(5 * time.Millisecond)
	for {
		select {
		case <-tick:
			fmt.Println("tick.")
		case <-boom:
			fmt.Println("Boom!")
			return
		default: // when other branch has not prepared
			fmt.Println("      .")
			time.Sleep(50 * time.Microsecond)
		}
	}
}
