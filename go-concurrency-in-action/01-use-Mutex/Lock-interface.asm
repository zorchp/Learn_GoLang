# command-line-arguments
main.main STEXT size=416 args=0x0 locals=0x68 funcid=0x0 align=0x0
	0x0000 00000 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	TEXT	main.main(SB), ABIInternal, $112-0
	0x0000 00000 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	MOVD	16(g), R16
	0x0004 00004 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	PCDATA	$0, $-2
	0x0004 00004 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	CMP	R16, RSP
	0x0008 00008 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	BLS	404
	0x000c 00012 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	PCDATA	$0, $-1
	0x000c 00012 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	MOVD.W	R30, -112(RSP)
	0x0010 00016 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	MOVD	R29, -8(RSP)
	0x0014 00020 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	SUB	$8, RSP, R29
	0x0018 00024 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	FUNCDATA	$0, gclocals·3CgL1OMj4PK20UKKkS8Bfw==(SB)
	0x0018 00024 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	FUNCDATA	$1, gclocals·swTiZyzCDNsRZFtKk60Ulw==(SB)
	0x0018 00024 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	FUNCDATA	$2, main.main.stkobj(SB)
	0x0018 00024 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	MOVD	(RSP), R0
	0x001c 00028 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	PCDATA	$1, $0
	0x001c 00028 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	CALL	runtime.racefuncenter(SB)
	0x0020 00032 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:14)	MOVD	$type:int(SB), R0
	0x0028 00040 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:14)	CALL	runtime.newobject(SB)
	0x002c 00044 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:14)	MOVD	R0, main.&count-24(SP)
	0x0030 00048 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:14)	PCDATA	$1, $1
	0x0030 00048 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:14)	CALL	runtime.racewrite(SB)
	0x0034 00052 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:14)	MOVD	main.&count-24(SP), R1
	0x0038 00056 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:14)	MOVD	ZR, (R1)
	0x003c 00060 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:15)	MOVD	$type:sync.WaitGroup(SB), R0
	0x0044 00068 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:15)	CALL	runtime.newobject(SB)
	0x0048 00072 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:15)	MOVD	R0, main.&wg-32(SP)
	0x004c 00076 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:15)	MOVD	$16, R1
	0x0050 00080 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:15)	PCDATA	$1, $2
	0x0050 00080 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:15)	CALL	runtime.racewriterange(SB)
	0x0054 00084 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:15)	MOVD	main.&wg-32(SP), R0
	0x0058 00088 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:15)	MOVD	ZR, (R0)
	0x005c 00092 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:15)	MOVW	ZR, 8(R0)
	0x0060 00096 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:16)	MOVD	$10, R1
	0x0064 00100 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:16)	CALL	sync.(*WaitGroup).Add(SB)
	0x0068 00104 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:16)	MOVD	ZR, R0
	0x006c 00108 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:17)	JMP	128
	0x0070 00112 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	PCDATA	$0, $-2
	0x0070 00112 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	R1, 16(R0)
	0x0074 00116 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	PCDATA	$0, $-1
	0x0074 00116 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	CALL	runtime.newproc(SB)
	0x0078 00120 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:17)	MOVD	main.i-48(SP), R1
	0x007c 00124 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:17)	ADD	$1, R1, R0
	0x0080 00128 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:17)	CMP	$10, R0
	0x0084 00132 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:17)	BGE	296
	0x0088 00136 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:17)	MOVD	R0, main.i-48(SP)
	0x008c 00140 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	$type:noalg.struct { F uintptr; X0 *sync.WaitGroup; X1 *int }(SB), R0
	0x0094 00148 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	CALL	runtime.newobject(SB)
	0x0098 00152 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	R0, main..autotmp_26-40(SP)
	0x009c 00156 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	PCDATA	$1, $3
	0x009c 00156 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	CALL	runtime.racewrite(SB)
	0x00a0 00160 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	$main.main.func1(SB), R1
	0x00a8 00168 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	main..autotmp_26-40(SP), R2
	0x00ac 00172 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	R1, (R2)
	0x00b0 00176 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	ADD	$8, R2, R0
	0x00b4 00180 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	CALL	runtime.racewrite(SB)
	0x00b8 00184 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	PCDATA	$0, $-2
	0x00b8 00184 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVWU	runtime.writeBarrier(SB), R1
	0x00c0 00192 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	CBNZW	R1, 208
	0x00c4 00196 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	main.&wg-32(SP), R1
	0x00c8 00200 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	main..autotmp_26-40(SP), R2
	0x00cc 00204 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	JMP	232
	0x00d0 00208 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	CALL	runtime.gcWriteBarrier2(SB)
	0x00d4 00212 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	main.&wg-32(SP), R1
	0x00d8 00216 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	R1, (R25)
	0x00dc 00220 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	main..autotmp_26-40(SP), R2
	0x00e0 00224 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	8(R2), R3
	0x00e4 00228 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	R3, 8(R25)
	0x00e8 00232 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	R1, 8(R2)
	0x00ec 00236 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	PCDATA	$0, $-1
	0x00ec 00236 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	ADD	$16, R2, R0
	0x00f0 00240 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	CALL	runtime.racewrite(SB)
	0x00f4 00244 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	PCDATA	$0, $-2
	0x00f4 00244 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVWU	runtime.writeBarrier(SB), R1
	0x00fc 00252 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	CBNZW	R1, 268
	0x0100 00256 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	main..autotmp_26-40(SP), R0
	0x0104 00260 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	main.&count-24(SP), R1
	0x0108 00264 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	JMP	112
	0x010c 00268 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	CALL	runtime.gcWriteBarrier2(SB)
	0x0110 00272 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	main.&count-24(SP), R1
	0x0114 00276 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	R1, (R25)
	0x0118 00280 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	main..autotmp_26-40(SP), R0
	0x011c 00284 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	16(R0), R2
	0x0120 00288 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	R2, 8(R25)
	0x0124 00292 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	JMP	112
	0x0128 00296 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:25)	PCDATA	$0, $-1
	0x0128 00296 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:25)	MOVD	main.&wg-32(SP), R0
	0x012c 00300 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:25)	PCDATA	$1, $1
	0x012c 00300 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:25)	CALL	sync.(*WaitGroup).Wait(SB)
	0x0130 00304 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:26)	STP	(ZR, ZR), main..autotmp_15-16(SP)
	0x0134 00308 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:26)	MOVD	main.&count-24(SP), R0
	0x0138 00312 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:26)	PCDATA	$1, $4
	0x0138 00312 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:26)	CALL	runtime.raceread(SB)
	0x013c 00316 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:26)	MOVD	main.&count-24(SP), R1
	0x0140 00320 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:26)	MOVD	(R1), R0
	0x0144 00324 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:26)	PCDATA	$1, $5
	0x0144 00324 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:26)	CALL	runtime.convT64(SB)
	0x0148 00328 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:26)	MOVD	$type:int(SB), R1
	0x0150 00336 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:26)	MOVD	R1, main..autotmp_15-16(SP)
	0x0154 00340 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:26)	MOVD	R0, main..autotmp_15-8(SP)
	0x0158 00344 (<unknown line number>)	NOP
	0x0158 00344 (/opt/homebrew/Cellar/go/1.21.4/libexec/src/fmt/print.go:314)	MOVD	$os.Stdout(SB), R0
	0x0160 00352 (/opt/homebrew/Cellar/go/1.21.4/libexec/src/fmt/print.go:314)	CALL	runtime.raceread(SB)
	0x0164 00356 (/opt/homebrew/Cellar/go/1.21.4/libexec/src/fmt/print.go:314)	PCDATA	$0, $-3
	0x0164 00356 (/opt/homebrew/Cellar/go/1.21.4/libexec/src/fmt/print.go:314)	MOVD	os.Stdout(SB), R1
	0x016c 00364 (/opt/homebrew/Cellar/go/1.21.4/libexec/src/fmt/print.go:314)	PCDATA	$0, $-1
	0x016c 00364 (/opt/homebrew/Cellar/go/1.21.4/libexec/src/fmt/print.go:314)	MOVD	$go:itab.*os.File,io.Writer(SB), R0
	0x0174 00372 (/opt/homebrew/Cellar/go/1.21.4/libexec/src/fmt/print.go:314)	MOVD	$main..autotmp_15-16(SP), R2
	0x0178 00376 (/opt/homebrew/Cellar/go/1.21.4/libexec/src/fmt/print.go:314)	MOVD	$1, R3
	0x017c 00380 (/opt/homebrew/Cellar/go/1.21.4/libexec/src/fmt/print.go:314)	MOVD	R3, R4
	0x0180 00384 (/opt/homebrew/Cellar/go/1.21.4/libexec/src/fmt/print.go:314)	PCDATA	$1, $0
	0x0180 00384 (/opt/homebrew/Cellar/go/1.21.4/libexec/src/fmt/print.go:314)	CALL	fmt.Fprintln(SB)
	0x0184 00388 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:27)	CALL	runtime.racefuncexit(SB)
	0x0188 00392 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:27)	LDP	-8(RSP), (R29, R30)
	0x018c 00396 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:27)	ADD	$112, RSP
	0x0190 00400 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:27)	RET	(R30)
	0x0194 00404 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:27)	NOP
	0x0194 00404 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	PCDATA	$1, $-1
	0x0194 00404 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	PCDATA	$0, $-2
	0x0194 00404 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	MOVD	R30, R3
	0x0198 00408 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	CALL	runtime.morestack_noctxt(SB)
	0x019c 00412 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	PCDATA	$0, $-1
	0x019c 00412 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:13)	JMP	0
	0x0000 90 0b 40 f9 ff 63 30 eb 69 0c 00 54 fe 0f 19 f8  ..@..c0.i..T....
	0x0010 fd 83 1f f8 fd 23 00 d1 e0 03 40 f9 00 00 00 94  .....#....@.....
	0x0020 00 00 00 90 00 00 00 91 00 00 00 94 e0 2b 00 f9  .............+..
	0x0030 00 00 00 94 e1 2b 40 f9 3f 00 00 f9 00 00 00 90  .....+@.?.......
	0x0040 00 00 00 91 00 00 00 94 e0 27 00 f9 e1 03 7c b2  .........'....|.
	0x0050 00 00 00 94 e0 27 40 f9 1f 00 00 f9 1f 08 00 b9  .....'@.........
	0x0060 41 01 80 d2 00 00 00 94 e0 03 1f aa 05 00 00 14  A...............
	0x0070 01 08 00 f9 00 00 00 94 e1 1f 40 f9 20 04 00 91  ..........@. ...
	0x0080 1f 28 00 f1 2a 05 00 54 e0 1f 00 f9 00 00 00 90  .(..*..T........
	0x0090 00 00 00 91 00 00 00 94 e0 23 00 f9 00 00 00 94  .........#......
	0x00a0 01 00 00 90 21 00 00 91 e2 23 40 f9 41 00 00 f9  ....!....#@.A...
	0x00b0 40 20 00 91 00 00 00 94 1b 00 00 90 61 03 40 b9  @ ..........a.@.
	0x00c0 81 00 00 35 e1 27 40 f9 e2 23 40 f9 07 00 00 14  ...5.'@..#@.....
	0x00d0 00 00 00 94 e1 27 40 f9 21 03 00 f9 e2 23 40 f9  .....'@.!....#@.
	0x00e0 43 04 40 f9 23 07 00 f9 41 04 00 f9 40 40 00 91  C.@.#...A...@@..
	0x00f0 00 00 00 94 1b 00 00 90 61 03 40 b9 81 00 00 35  ........a.@....5
	0x0100 e0 23 40 f9 e1 2b 40 f9 da ff ff 17 00 00 00 94  .#@..+@.........
	0x0110 e1 2b 40 f9 21 03 00 f9 e0 23 40 f9 02 08 40 f9  .+@.!....#@...@.
	0x0120 22 07 00 f9 d3 ff ff 17 e0 27 40 f9 00 00 00 94  "........'@.....
	0x0130 ff ff 05 a9 e0 2b 40 f9 00 00 00 94 e1 2b 40 f9  .....+@......+@.
	0x0140 20 00 40 f9 00 00 00 94 01 00 00 90 21 00 00 91   .@.........!...
	0x0150 e1 2f 00 f9 e0 33 00 f9 00 00 00 90 00 00 00 91  ./...3..........
	0x0160 00 00 00 94 1b 00 00 90 61 03 40 f9 00 00 00 90  ........a.@.....
	0x0170 00 00 00 91 e2 63 01 91 e3 03 40 b2 e4 03 03 aa  .....c....@.....
	0x0180 00 00 00 94 00 00 00 94 fd fb 7f a9 ff c3 01 91  ................
	0x0190 c0 03 5f d6 e3 03 1e aa 00 00 00 94 99 ff ff 17  .._.............
	rel 0+0 t=23 type:int+0
	rel 0+0 t=23 type:*os.File+0
	rel 28+4 t=9 runtime.racefuncenter+0
	rel 32+8 t=3 type:int+0
	rel 40+4 t=9 runtime.newobject+0
	rel 48+4 t=9 runtime.racewrite+0
	rel 60+8 t=3 type:sync.WaitGroup+0
	rel 68+4 t=9 runtime.newobject+0
	rel 80+4 t=9 runtime.racewriterange+0
	rel 100+4 t=9 sync.(*WaitGroup).Add+0
	rel 116+4 t=9 runtime.newproc+0
	rel 140+8 t=3 type:noalg.struct { F uintptr; X0 *sync.WaitGroup; X1 *int }+0
	rel 148+4 t=9 runtime.newobject+0
	rel 156+4 t=9 runtime.racewrite+0
	rel 160+8 t=3 main.main.func1+0
	rel 180+4 t=9 runtime.racewrite+0
	rel 184+8 t=40 runtime.writeBarrier+0
	rel 208+4 t=9 runtime.gcWriteBarrier2+0
	rel 240+4 t=9 runtime.racewrite+0
	rel 244+8 t=40 runtime.writeBarrier+0
	rel 268+4 t=9 runtime.gcWriteBarrier2+0
	rel 300+4 t=9 sync.(*WaitGroup).Wait+0
	rel 312+4 t=9 runtime.raceread+0
	rel 324+4 t=9 runtime.convT64+0
	rel 328+8 t=3 type:int+0
	rel 344+8 t=3 os.Stdout+0
	rel 352+4 t=9 runtime.raceread+0
	rel 356+8 t=41 os.Stdout+0
	rel 364+8 t=3 go:itab.*os.File,io.Writer+0
	rel 384+4 t=9 fmt.Fprintln+0
	rel 388+4 t=9 runtime.racefuncexit+0
	rel 408+4 t=9 runtime.morestack_noctxt+0
main.main.func1 STEXT size=240 args=0x0 locals=0x98 funcid=0x0 align=0x0
	0x0000 00000 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	TEXT	main.main.func1(SB), NEEDCTXT|ABIInternal, $160-0
	0x0000 00000 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	16(g), R16
	0x0004 00004 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	PCDATA	$0, $-2
	0x0004 00004 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	SUB	$32, RSP, R17
	0x0008 00008 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	CMP	R16, R17
	0x000c 00012 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	BLS	220
	0x0010 00016 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	PCDATA	$0, $-1
	0x0010 00016 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD.W	R30, -160(RSP)
	0x0014 00020 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	R29, -8(RSP)
	0x0018 00024 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	SUB	$8, RSP, R29
	0x001c 00028 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	FUNCDATA	$0, gclocals·ykHN0vawYuq1dUW4zEe2gA==(SB)
	0x001c 00028 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	FUNCDATA	$1, gclocals·wzYnV3LCZBsLb8tO/rJwOA==(SB)
	0x001c 00028 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	FUNCDATA	$2, main.main.func1.stkobj(SB)
	0x001c 00028 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	8(R26), R1
	0x0020 00032 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	R1, main.&wg-32(SP)
	0x0024 00036 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	16(R26), R2
	0x0028 00040 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	R2, main.&count-24(SP)
	0x002c 00044 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	(RSP), R0
	0x0030 00048 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	PCDATA	$1, $1
	0x0030 00048 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	CALL	runtime.racefuncenter(SB)
	0x0034 00052 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	STP	(ZR, ZR), main..autotmp_4-16(SP)
	0x0038 00056 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	MOVD	$main.main.func1.1(SB), R1
	0x0040 00064 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	MOVD	R1, main..autotmp_4-16(SP)
	0x0044 00068 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	MOVD	main.&wg-32(SP), R1
	0x0048 00072 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	MOVD	R1, main..autotmp_4-8(SP)
	0x004c 00076 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	MOVD	$main..autotmp_4-16(SP), R1
	0x0050 00080 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	MOVD	R1, main..autotmp_8-80(SP)
	0x0054 00084 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	MOVD	$main..autotmp_8-104(SP), R0
	0x0058 00088 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	PCDATA	$1, $2
	0x0058 00088 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	CALL	runtime.deferprocStack(SB)
	0x005c 00092 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	CMP	$0, R0
	0x0060 00096 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	BNE	108
	0x0064 00100 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	MOVD	ZR, R0
	0x0068 00104 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	JMP	184
	0x006c 00108 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	PCDATA	$1, $0
	0x006c 00108 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	CALL	runtime.deferreturn(SB)
	0x0070 00112 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	CALL	runtime.racefuncexit(SB)
	0x0074 00116 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	LDP	-8(RSP), (R29, R30)
	0x0078 00120 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	ADD	$160, RSP
	0x007c 00124 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	RET	(R30)
	0x0080 00128 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:20)	MOVD	R0, main.j-120(SP)
	0x0084 00132 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:21)	MOVD	main.&count-24(SP), R0
	0x0088 00136 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:21)	PCDATA	$1, $2
	0x0088 00136 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:21)	CALL	runtime.raceread(SB)
	0x008c 00140 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:21)	MOVD	main.&count-24(SP), R0
	0x0090 00144 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:21)	MOVD	(R0), R1
	0x0094 00148 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:21)	MOVD	R1, main..autotmp_9-112(SP)
	0x0098 00152 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:21)	CALL	runtime.racewrite(SB)
	0x009c 00156 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:21)	MOVD	main..autotmp_9-112(SP), R1
	0x00a0 00160 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:21)	ADD	$1, R1, R1
	0x00a4 00164 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:21)	MOVD	main.&count-24(SP), R0
	0x00a8 00168 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:21)	MOVD	R1, (R0)
	0x00ac 00172 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:20)	MOVD	main.j-120(SP), R1
	0x00b0 00176 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:20)	ADD	$1, R1, R1
	0x00b4 00180 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:20)	MOVD	R1, R0
	0x00b8 00184 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:20)	MOVD	$100000, R1
	0x00c0 00192 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:20)	CMP	R1, R0
	0x00c4 00196 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:20)	BLT	128
	0x00c8 00200 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:23)	PCDATA	$1, $0
	0x00c8 00200 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:23)	CALL	runtime.deferreturn(SB)
	0x00cc 00204 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:23)	CALL	runtime.racefuncexit(SB)
	0x00d0 00208 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:23)	LDP	-8(RSP), (R29, R30)
	0x00d4 00212 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:23)	ADD	$160, RSP
	0x00d8 00216 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:23)	RET	(R30)
	0x00dc 00220 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:23)	NOP
	0x00dc 00220 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	PCDATA	$1, $-1
	0x00dc 00220 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	PCDATA	$0, $-2
	0x00dc 00220 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	MOVD	R30, R3
	0x00e0 00224 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	CALL	runtime.morestack(SB)
	0x00e4 00228 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	PCDATA	$0, $-1
	0x00e4 00228 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:18)	JMP	0
	0x0000 90 0b 40 f9 f1 83 00 d1 3f 02 10 eb 89 06 00 54  ..@.....?......T
	0x0010 fe 0f 16 f8 fd 83 1f f8 fd 23 00 d1 41 07 40 f9  .........#..A.@.
	0x0020 e1 3f 00 f9 42 0b 40 f9 e2 43 00 f9 e0 03 40 f9  .?..B.@..C....@.
	0x0030 00 00 00 94 ff ff 08 a9 01 00 00 90 21 00 00 91  ............!...
	0x0040 e1 47 00 f9 e1 3f 40 f9 e1 4b 00 f9 e1 23 02 91  .G...?@..K...#..
	0x0050 e1 27 00 f9 e0 c3 00 91 00 00 00 94 1f 00 00 f1  .'..............
	0x0060 61 00 00 54 e0 03 1f aa 14 00 00 14 00 00 00 94  a..T............
	0x0070 00 00 00 94 fd fb 7f a9 ff 83 02 91 c0 03 5f d6  .............._.
	0x0080 e0 13 00 f9 e0 43 40 f9 00 00 00 94 e0 43 40 f9  .....C@......C@.
	0x0090 01 00 40 f9 e1 17 00 f9 00 00 00 94 e1 17 40 f9  ..@...........@.
	0x00a0 21 04 00 91 e0 43 40 f9 01 00 00 f9 e1 13 40 f9  !....C@.......@.
	0x00b0 21 04 00 91 e0 03 01 aa 01 d4 90 d2 21 00 a0 f2  !...........!...
	0x00c0 1f 00 01 eb eb fd ff 54 00 00 00 94 00 00 00 94  .......T........
	0x00d0 fd fb 7f a9 ff 83 02 91 c0 03 5f d6 e3 03 1e aa  .........._.....
	0x00e0 00 00 00 94 c7 ff ff 17 00 00 00 00 00 00 00 00  ................
	rel 48+4 t=9 runtime.racefuncenter+0
	rel 56+8 t=3 main.main.func1.1+0
	rel 88+4 t=9 runtime.deferprocStack+0
	rel 108+4 t=9 runtime.deferreturn+0
	rel 112+4 t=9 runtime.racefuncexit+0
	rel 136+4 t=9 runtime.raceread+0
	rel 152+4 t=9 runtime.racewrite+0
	rel 200+4 t=9 runtime.deferreturn+0
	rel 204+4 t=9 runtime.racefuncexit+0
	rel 224+4 t=9 runtime.morestack+0
main.main.func1.1 STEXT size=112 args=0x0 locals=0x18 funcid=0x15 align=0x0
	0x0000 00000 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	TEXT	main.main.func1.1(SB), WRAPPER|NEEDCTXT|ABIInternal, $32-0
	0x0000 00000 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	MOVD	16(g), R16
	0x0004 00004 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	PCDATA	$0, $-2
	0x0004 00004 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	CMP	R16, RSP
	0x0008 00008 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	BLS	72
	0x000c 00012 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	PCDATA	$0, $-1
	0x000c 00012 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	MOVD.W	R30, -32(RSP)
	0x0010 00016 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	MOVD	R29, -8(RSP)
	0x0014 00020 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	SUB	$8, RSP, R29
	0x0018 00024 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	MOVD	32(g), R16
	0x001c 00028 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	CBNZ	R16, 84
	0x0020 00032 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	NOP
	0x0020 00032 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	FUNCDATA	$0, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x0020 00032 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	FUNCDATA	$1, gclocals·CnDyI2HjYXFz19SsOj98tw==(SB)
	0x0020 00032 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	FUNCDATA	$7, sync.(*WaitGroup).Done.wrapinfo(SB)
	0x0020 00032 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	MOVD	8(R26), R1
	0x0024 00036 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	MOVD	R1, main..autotmp_1-8(SP)
	0x0028 00040 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	MOVD	(RSP), R0
	0x002c 00044 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	PCDATA	$1, $1
	0x002c 00044 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	CALL	runtime.racefuncenter(SB)
	0x0030 00048 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	MOVD	main..autotmp_1-8(SP), R0
	0x0034 00052 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	PCDATA	$1, $0
	0x0034 00052 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	CALL	sync.(*WaitGroup).Done(SB)
	0x0038 00056 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	CALL	runtime.racefuncexit(SB)
	0x003c 00060 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	LDP	-8(RSP), (R29, R30)
	0x0040 00064 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	ADD	$32, RSP
	0x0044 00068 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	RET	(R30)
	0x0048 00072 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	NOP
	0x0048 00072 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	PCDATA	$1, $-1
	0x0048 00072 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	PCDATA	$0, $-2
	0x0048 00072 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	MOVD	R30, R3
	0x004c 00076 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	CALL	runtime.morestack(SB)
	0x0050 00080 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	PCDATA	$0, $-1
	0x0050 00080 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	JMP	0
	0x0054 00084 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	MOVD	(R16), R17
	0x0058 00088 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	ADD	$40, RSP, R20
	0x005c 00092 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	CMP	R17, R20
	0x0060 00096 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	BNE	32
	0x0064 00100 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	ADD	$8, RSP, R20
	0x0068 00104 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	MOVD	R20, (R16)
	0x006c 00108 (/Users/zorch/code/go_proj/Learn_GoLang/go-concurrency-in-action/Lock-interface.go:19)	JMP	32
	0x0000 90 0b 40 f9 ff 63 30 eb 09 02 00 54 fe 0f 1e f8  ..@..c0....T....
	0x0010 fd 83 1f f8 fd 23 00 d1 90 13 40 f9 d0 01 00 b5  .....#....@.....
	0x0020 41 07 40 f9 e1 0b 00 f9 e0 03 40 f9 00 00 00 94  A.@.......@.....
	0x0030 e0 0b 40 f9 00 00 00 94 00 00 00 94 fd fb 7f a9  ..@.............
	0x0040 ff 83 00 91 c0 03 5f d6 e3 03 1e aa 00 00 00 94  ......_.........
	0x0050 ec ff ff 17 11 02 40 f9 f4 a3 00 91 9f 02 11 eb  ......@.........
	0x0060 01 fe ff 54 f4 23 00 91 14 02 00 f9 ed ff ff 17  ...T.#..........
	rel 44+4 t=9 runtime.racefuncenter+0
	rel 52+4 t=9 sync.(*WaitGroup).Done+0
	rel 56+4 t=9 runtime.racefuncexit+0
	rel 76+4 t=9 runtime.morestack+0
go:cuinfo.producer.main SDWARFCUINFO dupok size=0
	0x0000 2d 72 61 63 65 20 2d 73 68 61 72 65 64 20 72 65  -race -shared re
	0x0010 67 61 62 69                                      gabi
go:cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
go:info.fmt.Println$abstract SDWARFABSFCN dupok size=44
	0x0000 05 66 6d 74 2e 50 72 69 6e 74 6c 6e 00 01 b9 02  .fmt.Println....
	0x0010 01 13 61 00 00 00 00 00 00 13 6e 00 01 00 00 00  ..a.......n.....
	0x0020 00 13 65 72 72 00 01 00 00 00 00 00              ..err.......
	rel 0+0 t=22 type:[]interface {}+0
	rel 0+0 t=22 type:error+0
	rel 0+0 t=22 type:int+0
	rel 21+4 t=31 go:info.[]interface {}+0
	rel 29+4 t=31 go:info.int+0
	rel 39+4 t=31 go:info.error+0
go:itab.*os.File,io.Writer SRODATA dupok size=32
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 5a 22 ee 60 00 00 00 00 00 00 00 00 00 00 00 00  Z".`............
	rel 0+8 t=1 type:io.Writer+0
	rel 8+8 t=1 type:*os.File+0
	rel 24+8 t=-32767 os.(*File).Write+0
main..inittask SNOPTRDATA size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+0 t=81 fmt..inittask+0
	rel 0+0 t=81 sync..inittask+0
runtime.gcbits.0600000000000000 SRODATA dupok size=8
	0x0000 06 00 00 00 00 00 00 00                          ........
type:.namedata.*struct { F uintptr; X0 *sync.WaitGroup; X1 *int }- SRODATA dupok size=52
	0x0000 00 32 2a 73 74 72 75 63 74 20 7b 20 46 20 75 69  .2*struct { F ui
	0x0010 6e 74 70 74 72 3b 20 58 30 20 2a 73 79 6e 63 2e  ntptr; X0 *sync.
	0x0020 57 61 69 74 47 72 6f 75 70 3b 20 58 31 20 2a 69  WaitGroup; X1 *i
	0x0030 6e 74 20 7d                                      nt }
type:.namedata.F. SRODATA dupok size=3
	0x0000 01 01 46                                         ..F
type:.namedata.X0. SRODATA dupok size=4
	0x0000 01 02 58 30                                      ..X0
type:.namedata.X1. SRODATA dupok size=4
	0x0000 01 02 58 31                                      ..X1
type:noalg.struct { F uintptr; X0 *sync.WaitGroup; X1 *int } SRODATA dupok size=152
	0x0000 18 00 00 00 00 00 00 00 18 00 00 00 00 00 00 00  ................
	0x0010 48 d7 b1 81 02 08 08 19 00 00 00 00 00 00 00 00  H...............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 03 00 00 00 00 00 00 00 03 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0090 10 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.0600000000000000+0
	rel 40+4 t=5 type:.namedata.*struct { F uintptr; X0 *sync.WaitGroup; X1 *int }-+0
	rel 44+4 t=-32763 type:*struct { F uintptr; X0 *sync.WaitGroup; X1 *int }+0
	rel 56+8 t=1 type:noalg.struct { F uintptr; X0 *sync.WaitGroup; X1 *int }+80
	rel 80+8 t=1 type:.namedata.F.+0
	rel 88+8 t=1 type:uintptr+0
	rel 104+8 t=1 type:.namedata.X0.+0
	rel 112+8 t=1 type:*sync.WaitGroup+0
	rel 128+8 t=1 type:.namedata.X1.+0
	rel 136+8 t=1 type:*int+0
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.0100000000000000 SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
type:*struct { F uintptr; X0 *sync.WaitGroup; X1 *int } SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 c2 28 90 58 08 08 08 36 00 00 00 00 00 00 00 00  .(.X...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*struct { F uintptr; X0 *sync.WaitGroup; X1 *int }-+0
	rel 48+8 t=1 type:noalg.struct { F uintptr; X0 *sync.WaitGroup; X1 *int }+0
runtime.nilinterequal·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.nilinterequal+0
type:.namedata.*[1]interface {}- SRODATA dupok size=18
	0x0000 00 10 2a 5b 31 5d 69 6e 74 65 72 66 61 63 65 20  ..*[1]interface 
	0x0010 7b 7d                                            {}
type:*[1]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 a8 0e 57 36 08 08 08 36 00 00 00 00 00 00 00 00  ..W6...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*[1]interface {}-+0
	rel 48+8 t=1 type:[1]interface {}+0
runtime.gcbits.0200000000000000 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
type:[1]interface {} SRODATA dupok size=72
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 6e 20 6a 3d 02 08 08 11 00 00 00 00 00 00 00 00  n j=............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.nilinterequal·f+0
	rel 32+8 t=1 runtime.gcbits.0200000000000000+0
	rel 40+4 t=5 type:.namedata.*[1]interface {}-+0
	rel 44+4 t=-32763 type:*[1]interface {}+0
	rel 48+8 t=1 type:interface {}+0
	rel 56+8 t=1 type:[]interface {}+0
type:.namedata.*struct { F uintptr; X0 *sync.WaitGroup }- SRODATA dupok size=43
	0x0000 00 29 2a 73 74 72 75 63 74 20 7b 20 46 20 75 69  .)*struct { F ui
	0x0010 6e 74 70 74 72 3b 20 58 30 20 2a 73 79 6e 63 2e  ntptr; X0 *sync.
	0x0020 57 61 69 74 47 72 6f 75 70 20 7d                 WaitGroup }
type:*struct { F uintptr; X0 *sync.WaitGroup } SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 fa ff e9 22 08 08 08 36 00 00 00 00 00 00 00 00  ..."...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*struct { F uintptr; X0 *sync.WaitGroup }-+0
	rel 48+8 t=1 type:noalg.struct { F uintptr; X0 *sync.WaitGroup }+0
type:noalg.struct { F uintptr; X0 *sync.WaitGroup } SRODATA dupok size=128
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 39 d6 fe b0 02 08 08 19 00 00 00 00 00 00 00 00  9...............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	rel 32+8 t=1 runtime.gcbits.0200000000000000+0
	rel 40+4 t=5 type:.namedata.*struct { F uintptr; X0 *sync.WaitGroup }-+0
	rel 44+4 t=-32763 type:*struct { F uintptr; X0 *sync.WaitGroup }+0
	rel 56+8 t=1 type:noalg.struct { F uintptr; X0 *sync.WaitGroup }+80
	rel 80+8 t=1 type:.namedata.F.+0
	rel 88+8 t=1 type:uintptr+0
	rel 104+8 t=1 type:.namedata.X0.+0
	rel 112+8 t=1 type:*sync.WaitGroup+0
type:.namedata.*struct { started bool; heap bool; openDefer bool; sp uintptr; pc uintptr; fn uintptr; _panic uintptr; link uintptr; fd uintptr; varp uintptr; framepc uintptr }- SRODATA dupok size=163
	0x0000 00 a0 01 2a 73 74 72 75 63 74 20 7b 20 73 74 61  ...*struct { sta
	0x0010 72 74 65 64 20 62 6f 6f 6c 3b 20 68 65 61 70 20  rted bool; heap 
	0x0020 62 6f 6f 6c 3b 20 6f 70 65 6e 44 65 66 65 72 20  bool; openDefer 
	0x0030 62 6f 6f 6c 3b 20 73 70 20 75 69 6e 74 70 74 72  bool; sp uintptr
	0x0040 3b 20 70 63 20 75 69 6e 74 70 74 72 3b 20 66 6e  ; pc uintptr; fn
	0x0050 20 75 69 6e 74 70 74 72 3b 20 5f 70 61 6e 69 63   uintptr; _panic
	0x0060 20 75 69 6e 74 70 74 72 3b 20 6c 69 6e 6b 20 75   uintptr; link u
	0x0070 69 6e 74 70 74 72 3b 20 66 64 20 75 69 6e 74 70  intptr; fd uintp
	0x0080 74 72 3b 20 76 61 72 70 20 75 69 6e 74 70 74 72  tr; varp uintptr
	0x0090 3b 20 66 72 61 6d 65 70 63 20 75 69 6e 74 70 74  ; framepc uintpt
	0x00a0 72 20 7d                                         r }
type:*struct { main.started bool; main.heap bool; main.openDefer bool; main.sp uintptr; main.pc uintptr; main.fn uintptr; main._panic uintptr; main.link uintptr; main.fd uintptr; main.varp uintptr; main.framepc uintptr } SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 e0 a3 8b ac 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.0100000000000000+0
	rel 40+4 t=5 type:.namedata.*struct { started bool; heap bool; openDefer bool; sp uintptr; pc uintptr; fn uintptr; _panic uintptr; link uintptr; fd uintptr; varp uintptr; framepc uintptr }-+0
	rel 48+8 t=1 type:noalg.struct { main.started bool; main.heap bool; main.openDefer bool; main.sp uintptr; main.pc uintptr; main.fn uintptr; main._panic uintptr; main.link uintptr; main.fd uintptr; main.varp uintptr; main.framepc uintptr }+0
runtime.gcbits. SRODATA dupok size=0
type:.importpath.main. SRODATA dupok size=6
	0x0000 00 04 6d 61 69 6e                                ..main
type:.namedata.started- SRODATA dupok size=9
	0x0000 00 07 73 74 61 72 74 65 64                       ..started
type:.namedata.heap- SRODATA dupok size=6
	0x0000 00 04 68 65 61 70                                ..heap
type:.namedata.openDefer- SRODATA dupok size=11
	0x0000 00 09 6f 70 65 6e 44 65 66 65 72                 ..openDefer
type:.namedata.sp- SRODATA dupok size=4
	0x0000 00 02 73 70                                      ..sp
type:.namedata.pc- SRODATA dupok size=4
	0x0000 00 02 70 63                                      ..pc
type:.namedata.fn- SRODATA dupok size=4
	0x0000 00 02 66 6e                                      ..fn
type:.namedata._panic- SRODATA dupok size=8
	0x0000 00 06 5f 70 61 6e 69 63                          .._panic
type:.namedata.link- SRODATA dupok size=6
	0x0000 00 04 6c 69 6e 6b                                ..link
type:.namedata.fd- SRODATA dupok size=4
	0x0000 00 02 66 64                                      ..fd
type:.namedata.varp- SRODATA dupok size=6
	0x0000 00 04 76 61 72 70                                ..varp
type:.namedata.framepc- SRODATA dupok size=9
	0x0000 00 07 66 72 61 6d 65 70 63                       ..framepc
type:noalg.struct { main.started bool; main.heap bool; main.openDefer bool; main.sp uintptr; main.pc uintptr; main.fn uintptr; main._panic uintptr; main.link uintptr; main.fd uintptr; main.varp uintptr; main.framepc uintptr } SRODATA dupok size=344
	0x0000 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  H...............
	0x0010 46 86 93 99 02 08 08 19 00 00 00 00 00 00 00 00  F...............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 0b 00 00 00 00 00 00 00 0b 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0090 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00a0 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x00b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00c0 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00d0 00 00 00 00 00 00 00 00 18 00 00 00 00 00 00 00  ................
	0x00e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00f0 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ...............
	0x0100 00 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00  ........(.......
	0x0110 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0120 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  0...............
	0x0130 00 00 00 00 00 00 00 00 38 00 00 00 00 00 00 00  ........8.......
	0x0140 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0150 40 00 00 00 00 00 00 00                          @.......
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type:.namedata.*struct { started bool; heap bool; openDefer bool; sp uintptr; pc uintptr; fn uintptr; _panic uintptr; link uintptr; fd uintptr; varp uintptr; framepc uintptr }-+0
	rel 44+4 t=-32763 type:*struct { main.started bool; main.heap bool; main.openDefer bool; main.sp uintptr; main.pc uintptr; main.fn uintptr; main._panic uintptr; main.link uintptr; main.fd uintptr; main.varp uintptr; main.framepc uintptr }+0
	rel 48+8 t=1 type:.importpath.main.+0
	rel 56+8 t=1 type:noalg.struct { main.started bool; main.heap bool; main.openDefer bool; main.sp uintptr; main.pc uintptr; main.fn uintptr; main._panic uintptr; main.link uintptr; main.fd uintptr; main.varp uintptr; main.framepc uintptr }+80
	rel 80+8 t=1 type:.namedata.started-+0
	rel 88+8 t=1 type:bool+0
	rel 104+8 t=1 type:.namedata.heap-+0
	rel 112+8 t=1 type:bool+0
	rel 128+8 t=1 type:.namedata.openDefer-+0
	rel 136+8 t=1 type:bool+0
	rel 152+8 t=1 type:.namedata.sp-+0
	rel 160+8 t=1 type:uintptr+0
	rel 176+8 t=1 type:.namedata.pc-+0
	rel 184+8 t=1 type:uintptr+0
	rel 200+8 t=1 type:.namedata.fn-+0
	rel 208+8 t=1 type:uintptr+0
	rel 224+8 t=1 type:.namedata._panic-+0
	rel 232+8 t=1 type:uintptr+0
	rel 248+8 t=1 type:.namedata.link-+0
	rel 256+8 t=1 type:uintptr+0
	rel 272+8 t=1 type:.namedata.fd-+0
	rel 280+8 t=1 type:uintptr+0
	rel 296+8 t=1 type:.namedata.varp-+0
	rel 304+8 t=1 type:uintptr+0
	rel 320+8 t=1 type:.namedata.framepc-+0
	rel 328+8 t=1 type:uintptr+0
type:.importpath.fmt. SRODATA dupok size=5
	0x0000 00 03 66 6d 74                                   ..fmt
type:.importpath.sync. SRODATA dupok size=6
	0x0000 00 04 73 79 6e 63                                ..sync
gclocals·3CgL1OMj4PK20UKKkS8Bfw== SRODATA dupok size=8
	0x0000 06 00 00 00 00 00 00 00                          ........
gclocals·swTiZyzCDNsRZFtKk60Ulw== SRODATA dupok size=14
	0x0000 06 00 00 00 05 00 00 00 00 04 06 07 14 10        ..............
main.main.stkobj SRODATA static size=24
	0x0000 01 00 00 00 00 00 00 00 f0 ff ff ff 10 00 00 00  ................
	0x0010 10 00 00 00 00 00 00 00                          ........
	rel 20+4 t=5 runtime.gcbits.0200000000000000+0
gclocals·ykHN0vawYuq1dUW4zEe2gA== SRODATA dupok size=8
	0x0000 03 00 00 00 00 00 00 00                          ........
gclocals·wzYnV3LCZBsLb8tO/rJwOA== SRODATA dupok size=11
	0x0000 03 00 00 00 04 00 00 00 00 03 02                 ...........
main.main.func1.stkobj SRODATA static size=24
	0x0000 01 00 00 00 00 00 00 00 f0 ff ff ff 10 00 00 00  ................
	0x0010 10 00 00 00 00 00 00 00                          ........
	rel 20+4 t=5 runtime.gcbits.0200000000000000+0
gclocals·J5F+7Qw7O7ve2QcWC7DpeQ== SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·CnDyI2HjYXFz19SsOj98tw== SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 01                    ..........
sync.(*WaitGroup).Done.wrapinfo SRODATA static dupok size=4
	0x0000 00 00 00 00                                      ....
	rel 0+4 t=5 sync.(*WaitGroup).Done+0
