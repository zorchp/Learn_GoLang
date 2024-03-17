package main

import "fmt"

func process(val int) int {
	return val + 10
}

func runThingConcurrently(in <-chan int, out chan<- int) {
	go func() {
		for val := range in {
			result := process(val)
			out <- result
		}
		close(out)
	}()
}

func main() {
	//
	input := make(chan int)
	output := make(chan int)
	go runThingConcurrently(input, output)

	go func() {
		for i := 1; i <= 5; i++ {
			input <- i
		}
		close(input)
	}()

	for result := range output {
		fmt.Println(result)
	}
}
