package main

import (
	"fmt"
	"sync"
)

// 接口 
// type Locker interface {
// 	Lock()
// 	Unlock()
// }

// 提供的方法 
// func(m *Mutex) Lock()
// func(m *Mutex) Unlock()

func main() {
	count := 0
	var wg sync.WaitGroup
	wg.Add(10)
	for i := 0; i < 10; i++ {
		go func() {
			defer wg.Done()
			for j := 0; j < 100_000; j++ {
				count++
			}
		}()
	}
	wg.Wait()
	fmt.Println(count)
}
