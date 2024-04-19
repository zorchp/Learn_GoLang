go test -bench=. -benchmem
goos: darwin
goarch: arm64
pkg: benchmark
BenchmarkFileLen1-11 14464 83935 ns/op 328 B/op 216 allocs/op
PASS
ok benchmark 2.057s

BenchmarkFileLen1-11 连字符后面是基准测试对应的 GOMAXPROCS 值
14464 表示测试产生稳定结果所需要的运行次数
83935 是该基准测试单次运行所花费的时间
328 单次基准测试分配的字节数量
216 单次基准测试期间必须从堆中分配字节的次数, 这个值总是小等分配的字节数.

如果使用不同的缓冲区大小, 得到的结果如下:

BenchmarkFileLen1/FileLen-1-11 14566 82748 ns/op 327 B/op 216 allocs/op
BenchmarkFileLen1/FileLen-10-11 95340 13016 ns/op 488 B/op 26 allocs/op
BenchmarkFileLen1/FileLen-100-11 216476 5498 ns/op 568 B/op 7 allocs/op
BenchmarkFileLen1/FileLen-1000-11 250484 5410 ns/op 2168 B/op 5 allocs/op
BenchmarkFileLen1/FileLen-10000-11 222364 5364 ns/op 20600 B/op 5 allocs/op
BenchmarkFileLen1/FileLen-100000-11 94238 13001 ns/op 213113 B/op 5 allocs/op
PASS
ok benchmark 8.666s

如果make 放在 for{} 外面(在 FileLen 函数中) 结果如下:

BenchmarkFileLen1/FileLen-1-11 14665 81351 ns/op 120 B/op 4 allocs/op
BenchmarkFileLen1/FileLen-10-11 94100 12804 ns/op 136 B/op 4 allocs/op
BenchmarkFileLen1/FileLen-100-11 217942 5442 ns/op 232 B/op 4 allocs/op
BenchmarkFileLen1/FileLen-1000-11 255690 4653 ns/op 1144 B/op 4 allocs/op
BenchmarkFileLen1/FileLen-10000-11 241946 5022 ns/op 10360 B/op 4 allocs/op
BenchmarkFileLen1/FileLen-100000-11 133214 8508 ns/op 106617 B/op 4 allocs/op
PASS
ok benchmark 8.330s
