package main

import "fmt"

type P struct {
	Name string
	Age  int
}

// serialization self
func (p P) String() string {
	return fmt.Sprintf("%v (%v years)", p.Name, p.Age)
}

func t1() {
	a := P{"a", 42}
	z := P{"z", 90}
	fmt.Println(a, z)
	// a (42 years) z (90 years)
}

// user definition type, can be serialization
type MyInt int

func (i MyInt) String() string {
	return fmt.Sprintf("this is %d", i)
}
func t2() {
	var i fmt.Stringer
	i = P{"b", 12}
	fmt.Println(i)

	i = MyInt(12)
	fmt.Println(i)
	// b (12 years)
	// this is 12
}

func main() {
	t1()
	t2()
}
