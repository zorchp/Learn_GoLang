package main

import (
	"errors"
	"fmt"
	"time"
)

func doSomeWork() (int, error) {
	fmt.Println("hello")
	// time.Sleep(2 * time.Second)
	time.Sleep(3 * time.Second)
	return 1, nil
}

func timeLimit() (int, error) {
	var result int
	var err error
	done := make(chan struct{})
	go func() {
		result, err = doSomeWork()
		close(done)
	}()
	select {
	case <-done:
		return result, err
	case <-time.After(2 * time.Second):
		return 0, errors.New("work timed out")
	}
}

func main() {
	ans, err := timeLimit()
	fmt.Println(ans, err)
}
