package main

import "fmt"

type I interface {
	M()
}

type T struct {
	S string
}

// type T implements interface I, no declaration
func (t T) M() {
	fmt.Println(t.S)
}

func t1() {
	var i I = T{"hello"}
	i.M()

	j := T{"world"}
	j.M()
}

func main() {
	t1()
}
