package main

import (
	"compress/gzip"
	"fmt"
	"io"
	"os"
	"strings"
)

func countLetters(r io.Reader) (map[string]int, error) {
	buf := make([]byte, 2048)
	out := map[string]int{}
	for {
		n, err := r.Read(buf)
		for _, b := range buf[:n] {
			if (b >= 'A' && b <= 'Z') || (b >= 'a' && b <= 'z') {
				out[string(b)]++
			}
		}
		if err == io.EOF {
			return out, nil
		}
		if err != nil {
			return nil, err
		}
	}
}

func t1() {
	s := "The quick brown fox jumped over the lazy dog"
	sr := strings.NewReader(s)
	counts, err := countLetters(sr)
	if err != nil {
		fmt.Println(err)
	}
	fmt.Println(counts)
	// map[T:1 a:1 b:1 c:1 d:2 e:4 f:1 g:1 h:2 i:1 j:1 k:1 l:1 m:1 n:1 o:4 p:1 q:1 r:2 t:1 u:2 v:1 w:1 x:1 y:1 z:1]
}

// use gz reader :
// generate gz file : gzip -c read_and_count.go > test.txt.gz

func buildGZipReader(fileName string) (*gzip.Reader, func(), error) {
	// *os.File satisfy io.Reader  interface
	r, err := os.Open(fileName)
	if err != nil {
		return nil, nil, err
	}
	gr, err := gzip.NewReader(r)
	if err != nil {
		return nil, nil, err
	}
	return gr, func() {
		gr.Close()
		r.Close()
	}, nil
}

func t2() {
	r, closer, err := buildGZipReader("test.txt.gz")
	if err != nil {
		fmt.Println(err)
	}
	defer closer()
	counts, err := countLetters(r)
	if err != nil {
		fmt.Println(err)
	}
	fmt.Println(counts)
	// map[A:1 E:1 F:1 L:2 N:1 O:1 P:2 R:3 T:1 Z:1 a:13 b:11 c:9 d:5 e:28 f:16 g:8 h:2 i:24 j:1 k:3 l:7 m:10 n:30 o:18 p:5 q:1 r:42 s:15 t:30 u:17 v:1 w:2 x:1 y:2 z:2]
}

func main() {
	t1()
	// t2()
}
