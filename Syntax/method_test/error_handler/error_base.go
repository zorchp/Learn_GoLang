package main

import (
	"fmt"
	"time"
)

type MyError struct {
	When time.Time
	What string
}

// serialization
func (e *MyError) Error() string {
	return fmt.Sprintf("at %v, %s", e.When, e.What)
}

func run() error {
	return &MyError{time.Now(), "don't work"}
}

func main() {
	if err := run(); err != nil {
		fmt.Println(err)
	}
	// at 2023-07-04 15:50:10.323918 +0800 CST m=+0.000065251, donot work
}
