package main

import (
	"io"
	"os"
	"strings"
)

type rot13Reader struct {
	r io.Reader
}

func (obj rot13Reader) Read(b []byte) (int, error) {
	ans := 0
	for {
		n, err := obj.r.Read(b)
		for i := ans; i < ans+n; i++ {
			if b[i] < 'n' {
				b[i] += 13
			} else {
				b[i] -= 13
			}
		}
		ans += n
		if err == io.EOF {
			return ans, err
		}
	}
}

func main() {
	s := strings.NewReader("Lbh penpxrq gur pbqr!")
	r := rot13Reader{s}
	// fmt.Println(r)
	io.Copy(os.Stdout, &r)
}
