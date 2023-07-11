package main

import "fmt"

type P struct {
	Age    int
	Name   string
	Gender bool
}

func (p *P) Eat(food_name string) {
	fmt.Println(p.Name, "is eating", food_name)
}

func t1() {
	p1 := P{1, "Tom", true}
	p1.Eat("bread")
}

func main() {
	t1()
}
