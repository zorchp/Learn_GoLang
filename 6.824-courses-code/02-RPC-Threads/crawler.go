package main

import (
	"fmt"
	"sync"
)

type Fetcher interface {
	// Fetch 返回 URL 的 body 内容，并且将在这个页面上找到的 URL 放到一个 slice 中。
	Fetch(url string) (body string, urls []string, err error)
}

type urlRecord struct {
	v   map[string]int
	mux sync.Mutex
	// wg  sync.WaitGroup
}

var m = urlRecord{v: make(map[string]int)}

func Serial(url string, fetcher Fetcher, fetched map[string]bool) {
	if fetched[url] {
		return
	}
	fetched[url] = true
	_, urls, err := fetcher.Fetch(url)
	fmt.Println(url)
	if err != nil {
		return
	}
	for _, u := range urls {
		Serial(u, fetcher, fetched)
	}
}

type fetchState struct {
	mu      sync.Mutex
	fetched map[string]bool //并发访问 map,所以需要加锁
}

func ConcurrentMutex(url string, fetcher Fetcher, f *fetchState) {
	f.mu.Lock()
	already := f.fetched[url]
	f.fetched[url] = true
	f.mu.Unlock()
	if already {
		return
	}
	fmt.Println(url)
	_, urls, err := fetcher.Fetch(url)
	if err != nil {
		return
	}
	var done sync.WaitGroup
	for _, u := range urls {
		done.Add(1)
		// u2 := u
		// go func() {
		// 	defer done.Done()
		// 	ConcurrentMutex(u2, fetcher, f)
		// }()
		go func(u string) { //capture var
			defer done.Done()
			ConcurrentMutex(u, fetcher, f)
		}(u)
	}
	done.Wait()
	return
}

func makeState() *fetchState {
	f := &fetchState{}
	f.fetched = make(map[string]bool)
	return f
}

func ConcurrentChannels(url string, fetcher Fetcher) {
	ch := make(chan []string)
	go func() {
		ch <- []string{url}
	}()
	coordinator(ch, fetcher)
}
func coordinator(ch chan []string, fetcher Fetcher) {
	n := 1 //n is necessary, otherwise deadlock!
	fetched := make(map[string]bool)
	for urls := range ch {
		for _, u := range urls {
			if fetched[u] == false {
				fetched[u] = true
				n++
				// fmt.Println("crawling...", n)
				go worker(u, ch, fetcher)
			}
		}
		n--
		// fmt.Println("return...", n)
		if n == 0 {
			break
		}
	}
}
func worker(url string, ch chan []string, fetcher Fetcher) {
	fmt.Println(url)
	_, urls, err := fetcher.Fetch(url)
	if err != nil {
		ch <- []string{}
	} else {
		ch <- urls
	}
}

// Crawl 使用 fetcher 从某个 URL 开始递归的爬取页面，直到达到最大深度。
func Crawl(url string, depth int, fetcher Fetcher) {
	// TODO: 并行的抓取 URL。
	// TODO: 不重复抓取页面。
	// defer m.wg.Done()

	if depth <= 0 {
		return
	}

	m.mux.Lock()
	m.v[url]++
	m.mux.Unlock()

	body, urls, err := fetcher.Fetch(url)
	if err != nil {
		fmt.Println(err)
		return
	}
	fmt.Printf("found: %s %q\n", url, body)
	for _, u := range urls {
		m.mux.Lock()
		if _, ok := m.v[u]; !ok {
			// m.wg.Add(1)
			go Crawl(u, depth-1, fetcher)
		}
		m.mux.Unlock()
	}

	return
}

func main() {
	// m.wg.Add(1)
	// Crawl("https://golang.org/", 4, fetcher)
	// m.wg.Wait()
	fmt.Println("======== Serial ===========")
	Serial("https://golang.org/", fetcher, make(map[string]bool))
	fmt.Println("======== Mutex ===========")
	ConcurrentMutex("https://golang.org/", fetcher, makeState())
	fmt.Println("======== Channel ===========")
	ConcurrentChannels("https://golang.org/", fetcher)
}

// fakeFetcher 是返回若干结果的 Fetcher。
type fakeFetcher map[string]*fakeResult

type fakeResult struct {
	body string
	urls []string
}

func (f fakeFetcher) Fetch(url string) (string, []string, error) {
	if res, ok := f[url]; ok {
		return res.body, res.urls, nil
	}
	return "", nil, fmt.Errorf("not found: %s", url)
}

// fetcher 是填充后的 fakeFetcher。
var fetcher = fakeFetcher{
	"https://golang.org/": &fakeResult{
		"The Go Programming Language",
		[]string{
			"https://golang.org/pkg/",
			"https://golang.org/cmd/",
		},
	},
	"https://golang.org/pkg/": &fakeResult{
		"Packages",
		[]string{
			"https://golang.org/",
			"https://golang.org/cmd/",
			"https://golang.org/pkg/fmt/",
			"https://golang.org/pkg/os/",
		},
	},
	"https://golang.org/pkg/fmt/": &fakeResult{
		"Package fmt",
		[]string{
			"https://golang.org/",
			"https://golang.org/pkg/",
		},
	},
	"https://golang.org/pkg/os/": &fakeResult{
		"Package os",
		[]string{
			"https://golang.org/",
			"https://golang.org/pkg/",
		},
	},
}
