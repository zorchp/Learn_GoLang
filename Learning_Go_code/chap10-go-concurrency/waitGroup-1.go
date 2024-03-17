package main

import (
	"fmt"
	"sync"
)

func doThing1() { fmt.Println(1) }
func doThing2() { fmt.Println(2) }
func doThing3() { fmt.Println(3) }

func main() {
	var wg sync.WaitGroup
	wg.Add(3)
	go func() {
		defer wg.Done()
		doThing1()
	}()
	go func() {
		defer wg.Done()
		doThing2()
	}()
	go func() {
		defer wg.Done()
		doThing3()
	}()
	wg.Wait()
}
