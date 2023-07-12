package main

import (
	"math/rand"
	"sync"
	"time"
)

// 采用条件变量等待投票结束
func main() {
	count := 0
	finished := 0

	var mu sync.Mutex
	cond := sync.NewCond(&mu)

	for i := 0; i < 10; i++ {
		go func() {
			vote := requestVote()
			mu.Lock()
			defer mu.Unlock() // return and run defer
			if vote {
				count++
			}
			finished++
			// cond.Broadcast()
			cond.Signal()
		}()
	}
	mu.Lock() // need obtain lock first
	for count < 5 && finished != 10 {
		cond.Wait()
	}

	if count >= 5 {
		println("received 5+ votes")
	} else {
		println("lost")
	}
	mu.Unlock()
}

func requestVote() bool {
	r := rand.New(rand.NewSource(time.Now().UnixNano()))
	time.Sleep(time.Duration(r.Intn(100)) * time.Millisecond)
	return r.Intn(2) == 0
}
