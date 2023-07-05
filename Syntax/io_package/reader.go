package main

import (
	"fmt"
	"io"
	"strings"
)

func main() {
	r := strings.NewReader("hello reader!")
	// 8 bytes/s
	b := make([]byte, 8)
	for {
		n, err := r.Read(b)
		fmt.Printf("n=%v err = %v b=%v\n", n, err, b)
		fmt.Printf("b[:n]=%q\n", b[:n])
		if err == io.EOF {
			break
		}
	}
	// n=8 err = <nil> b=[104 101 108 108 111 32 114 101]
	// b[:n]="hello re"
	// n=5 err = <nil> b=[97 100 101 114 33 32 114 101]
	// b[:n]="ader!"
	// n=0 err = EOF b=[97 100 101 114 33 32 114 101]
	// b[:n]=""

}
