package main

import (
	"fmt"
	"math/rand"
	"time"
)

func t1() {
	rand.Seed(time.Now().UnixNano())
	fmt.Println(rand.Intn(10)) //random number in [0,10]
}
func t2() {
	r := rand.New(rand.NewSource(time.Now().UnixNano()))
	fmt.Println(r.Uint64())
	fmt.Println(r.Int() % 3)
}

func main() {
	// t1()
	t2()
}
