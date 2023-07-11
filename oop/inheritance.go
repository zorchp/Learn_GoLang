package main

import (
	"fmt"
)

type Person struct {
	Age  int
	Name string
}

func (p *Person) Eat() {
	fmt.Printf("%+v, public method Eat\n", *p)
}

func t1() {
	p := Person{1, "abc"}
	fmt.Println(p)
	p.Eat()
}

type Q struct {
	Num    int
	Person // anonymous field
}

func t2() {
	p := Person{Age: 1, Name: "23"}
	q := Q{Num: 1, Person: p}
	q.Eat()
}

func main() {
	t1()
	t2()
}
