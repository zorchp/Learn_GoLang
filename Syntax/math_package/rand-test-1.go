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

func main() {
	t1()
}
