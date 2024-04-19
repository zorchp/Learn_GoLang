package main

import (
	"encoding/json"
	"fmt"
	"time"
)

var json_str string = `
{
"id":"12345",
"date_ordered": "2020-05-01T13:01:02Z",
"customer_id":"3",
"items":[{"id":"xyz123","name":"Thing 1"}, {"id":"abc789","name":"Thing 2"}]
}
`

type Order struct {
	ID          string    `json:"id"`
	DateOrdered time.Time `json:"date_ordered"`
	CustomerID  string    `json:"customer_id"`
	Items       []Item    `json:"items"`
}

type Item struct {
	ID   string `json:"id"`
	Name string `json:"name"`
}

func str2json() {
	var o Order
	err := json.Unmarshal([]byte(json_str), &o)
	if err != nil {
		fmt.Println(err)
	}
	fmt.Println(o.CustomerID)
	fmt.Println(o.Items)
}

func main() {
	str2json()
}
