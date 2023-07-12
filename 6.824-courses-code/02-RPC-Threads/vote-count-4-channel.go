package main

import (
	"math/rand"
	"time"
)

// 采用条件变量等待投票结束
func main() {
	count := 0
	finished := 0

	ch := make(chan bool)

	for i := 0; i < 10; i++ {
		go func() {
			ch <- requestVote()
		}()
	}
	for count < 5 && finished != 10 {
		v := <-ch
		if v {
			count++
		}
		finished++
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
	return r.Intn(2) == 0
}
