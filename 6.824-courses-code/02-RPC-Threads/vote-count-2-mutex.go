package main

import (
	"math/rand"
	"sync"
	"time"
)

// 加锁处理.
func main() {
	// rand.Seed(time.Now().UnixNano()) //deprecated

	count := 0
	finished := 0
	var mu sync.Mutex
	for i := 0; i < 10; i++ {
		go func() {
			vote := requestVote()
			mu.Lock()
			defer mu.Unlock() // return and run defer
			if vote {
				count++
			}
			finished++
			// count = i
		}()
	}
	for { //spin
		mu.Lock()
		if count >= 5 || finished == 10 {
			break
		}
		mu.Unlock()
		// may wait some time
		time.Sleep(50 * time.Millisecond)
	}

	if count >= 5 {
		println("received 5+ votes")
	} else {
		println("lost")
	}
}

func requestVote() bool {
	r := rand.New(rand.NewSource(time.Now().UnixNano()))
	time.Sleep(time.Duration(r.Intn(100)) * time.Millisecond)
	return r.Intn(2) == 1
}
