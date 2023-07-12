package main

import "fmt"

func t1() {
	// var m map[string]int
	// m = make(map[string]int)
	m := make(map[string]int)
	m["a"] = 1
	m["a"] = 11
	m["na"] = 12
	fmt.Println(m)
	for k, v := range m {
		fmt.Println(k, v)
		delete(m, k)
	}
	fmt.Println(m)
}

func t2() {
	m := make(map[string]int)
	m["a"] = 11
	m["na"] = 12
	// key and value
	for k, v := range m {
		fmt.Println(k, v)
	}
	//just value
	for _, v := range m {
		fmt.Println(v)
	}
	//just key
	for k := range m {
		fmt.Println(k)
	}
}

func main() {
	// t1()
	t2()
}
