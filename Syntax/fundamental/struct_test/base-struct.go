package main

import "fmt"

type Vertex struct {
	// X int
	// Y int
	// 等价于
	X, Y int
}

func t1() {
	fmt.Println(Vertex{1, 2}) //{1 2}
}

func t2() { //access struct directly
	v := Vertex{1, 2}
	v.X = 12
	fmt.Println(v) //{12 2}
}

func t3() { //access struct by ptr
	v := Vertex{1, 2}
	p := &v // ptr to Vertex
	p.X = 1e10
	fmt.Println(v) //{10000000000 2}
	fmt.Println(p) //&{10000000000 2}
}

var (
	v1 = Vertex{1, 2}
	v2 = Vertex{X: 1}  // default v2.Y=0
	v3 = Vertex{}      //default v3.X=0, v3.Y=0
	p  = &Vertex{1, 2} // ptr to Vertex{1, 2}
)

func t4() {
	fmt.Println(v1, p, v2, v3)
	//{1 2} &{1 2} {1 0} {0 0}
	fmt.Println(&p) //0x1049208d0
}

func main() {
	// t1()
	// t2()
	t3()
	// t4()
}
