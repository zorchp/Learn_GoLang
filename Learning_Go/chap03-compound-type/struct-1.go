package main

import "fmt"

func main() {
	// base()
	anonymous_struct()
}

func base() {
	type p struct {
		name string
		age  int
		pet  string
	}
	var x p
	fmt.Println(x)
	bob := p{}
	fmt.Println(bob)
	julia := p{"j", 10, "dog"}
	fmt.Println(julia)
	// { 0 }
	// { 0 }
	// {j 10 dog}

	beth := p{
		age:  23,
		name: "beth",
	}
	fmt.Println(beth) //{beth 23 }
}

func anonymous_struct() {
	var p struct {
		name string
		age  int
		pet  string
	}
	p.name = "bob"
	p.age = 2
	p.pet = "puppy"
	pet := struct {
		name string
		kind string
	}{
		name: "ff",
		kind: "gg",
	}
	fmt.Println(pet) //{ff gg}
}

func compare_struct(){
	type firstP struct {
		name string
		age int
	}
	type secondP struct {
		name string
		age int
	}
}



