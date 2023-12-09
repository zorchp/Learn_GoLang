package main

import "fmt"

func use_bool() {
	intSet := map[int]bool{}
	vals := []int{2, 3, 2, 3, 21, 2}
	for _, v := range vals {
		intSet[v] = true
	}
	fmt.Println(len(vals), len(intSet))
	fmt.Println(intSet[3])
	fmt.Println(intSet[500])
	if intSet[100] {
		fmt.Println("100 in set")
	}
	// 6 3
	// true
	// false
}

func use_struct() {
	intSet := map[int]struct{}{}
	vals := []int{2, 3, 2, 3, 21, 2}
	for _, v := range vals {
		intSet[v] = struct{}{}
	}
	if _, ok := intSet[3]; ok {
		print("3 in set")
	}
}

func main() {
	// use_bool()
	use_struct()
}
