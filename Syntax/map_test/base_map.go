package main

import (
	"fmt"
)

type Vertex struct {
	Lat, Long float64
}

func t1() {
	var m map[string]Vertex
	m = make(map[string]Vertex)
	m["Bell labs"] = Vertex{
		10, 2,
	}
	fmt.Println(m["Bell labs"]) //{10 2}
	fmt.Println(m)              //map[Bell labs:{10 2}]
}

func t2() {
	var m1 = map[string]Vertex{
		"a": {1, 2.1}, "b": {12, 31.4}, // typename omit
	}
	fmt.Println(m1)
	// map[a:{1 2.1} b:{12 31.4}]
}

func t3() {
	// modify map
	m := make(map[string]int)

	m["ans"] = 42
	fmt.Println(m)
	m["ans"] = 100
	fmt.Println(m)
	delete(m, "ans")
	fmt.Println(m)
	v, ok := m["ans"] // check key in map or not
	fmt.Println(v, ok, m)
	// map[ans:42]
	// map[ans:100]
	// map[]
	// 0 false map[]
}

func main() {
	// t1()
	// t2()
	t3()
}
