package main

import (
	"fmt"
	"time"
)

func t1() {
	// d := 2 * time.Second
	d, err := time.ParseDuration("1s2ms")
	if err != nil {
		fmt.Println(err)
	}
	time.Sleep(d)
}

func main() {
	t1()
}
