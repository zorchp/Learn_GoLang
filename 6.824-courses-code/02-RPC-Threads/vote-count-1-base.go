package main

import (
	"math/rand"
	"time"
)

// 没有并发控制, 导致竞态条件(加锁以避免)
func main() {
	// rand.Seed(time.Now().UnixNano()) //deprecated

	count := 0
	finished := 0
	for i := 0; i < 10; i++ {
		go func() {
			vote := requestVote()
			if vote {
				count++
			}
			finished++
		}()
	}
	for count < 5 && finished != 10 {
		//wait
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
