package main

import "fmt"

type LogicProvider struct{}

func (lp LogicProvider) Process(data string) string {
	fmt.Println(data)
	return ""
}

type Logic interface {
	Process(data string) string
}

type Client struct{ L Logic }

func (c Client) Program() {
	data := "hello"
	c.L.Process(data)
}

func main() {
	c := Client{
		L: LogicProvider{},
	}
	c.Program()
}
