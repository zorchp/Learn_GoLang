package main

import (
	"fmt"
	"time"
)

func t1() {
	time.Sleep(1 * time.Second)
	fmt.Println("over")

}
func t2() {
	time.Sleep(1000 * time.Nanosecond)
	fmt.Println("over")

}

func main() {
	t1()
	t2()
}
