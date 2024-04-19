package main

import (
	"fmt"
	"sync"
)

type Counter struct {
	sync.Mutex // 内嵌字段
	Count      uint64
}

// 内嵌字段, 在内嵌字段上声明的任何字段或方法
// 都会被提升到所包含的结构体上, 并可以直接对其进行调用
func main() {
	var counter Counter
	var wg sync.WaitGroup
	wg.Add(10)
	for i := 0; i < 10; i++ {
		go func() {
			defer wg.Done()
			for j := 0; j < 100_000; j++ {
				counter.Lock()
				counter.Count++
				counter.Unlock()
			}
		}()
	}
	wg.Wait()
	fmt.Println(counter)
}
