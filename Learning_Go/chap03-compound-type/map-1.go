package main

import "fmt"

func base() {
	var nilMap map[string]int
	totalWins := map[string]int{}
	fmt.Println(nilMap)
	fmt.Println(nilMap == nil)
	fmt.Println(totalWins)
	fmt.Println(totalWins == nil)
	// map[]
	// true
	// map[]
	// false
	teams := map[string][]string{
		"Orcas": {
			"Fred", "Ralph", "Bijou",
		},
	}
	fmt.Println(teams) // map[Orcas:[Fred Ralph Bijou]]

	fmt.Println(cap(teams["Orcas"])) // 3

	ages := make(map[int][]string, 10)
	fmt.Println(ages, len(ages)) // map[] 0
}

func io_map() {
	totalWins := map[string]int{}
	totalWins["Orcas"] = 1
	totalWins["Lions"] = 2
	fmt.Println(totalWins["Orcas"])   // 1
	fmt.Println(totalWins["Kittens"]) // 0
	totalWins["Kittens"]++
	fmt.Println(totalWins["Kittens"]) // 1
	totalWins["Lions"] = 3
	fmt.Println(totalWins["Lions"]) // 3
}

func check_exists() {
	m := map[string]int{
		"h": 5, "w": 0,
	}
	fmt.Println(m) // map[h:5 w:0]
	v, ok := m["h"]
	println(v, ok) // 5, true
	v, ok = m["e"]
	println(v, ok) // 0, false
}

func delete_element() {
	m := map[string]int{
		"h": 5, "w": 0,
	}
	delete(m, "w")
	fmt.Println(m) // map[h:5]
	delete(m, "l") // nil , do nothing
	fmt.Println(m) // map[h:5]
}

func main() {
	// base()
	// io_map()
	// check_exists()
	delete_element()
}
