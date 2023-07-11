# GoLang中使用本地包的操作

> environment:
>
> ```bash
>  ==> go version
> go version go1.20.4 darwin/arm64
> ```
>
> `go mod` 是 go 1.11 (大约 2018 年 之后)开始支持的

本地包的导入可以分成两个情况, 即:

1. 要导入的包存在于在本项目的目录下, 直接导入.
2. 要导入的包存在于其他目录下, 使用 `replace` 命令导入.

## 在本项目目录下导入

这里以在 `./pkg0/main.go` 中导入内部目录 `./pkg0/kpkg/` 中的 `kpkg` 模块为例, 首先需要填写内部模块(`kpkg`)的`go.mod`文件, 内容其实就是模块的名称:

```go
// pkg0/kpkg/go.mod
module kpkg

go 1.20
```

然后就是要导入的模块(`Hello`)了:

```go
// pkg0/kpkg/Hello.go
package kpkg

import "fmt"

func SayHello() {
 fmt.Println("hello kkk")
}
```

此时, 在`./pkg0` 目录下就可以使用内部目录中的模块 `kpkg` 了:

```go
// pkg
package main

import (
 "fmt"
 "kpkg" //use local pkg
)

func main() {
 fmt.Println("hello pkg")
 kpkg.SayHello()
 // hello pkg
 // hello kkk
}
```

其实就是要用`go.mod`文件暴露模块的位置, 一般来说模块都是存在于某特定目录中的.

## 在另一目录下导入

这种情况下稍微复杂一些, 我重新复制了一份代码, 就是目录中的 `pkg1/` 目录, 内容与 `pkg0/` 类似, 不过需要注意, `pkg1/` 目录下多了一个 `go.mod` 文件, 其内容为:

```go
module pkg1

go 1.20
```

这是为了其他目录可以检索到这个模块, 一会要导入 pkg1 下的 kpkg 模块中的 `SayHello` 方法.

然后重点来了, 就是 pkg2 模块, 在这里实现导入其他目录中的模块的方法.

首先需要为 pkg2 目录添加`go.mod` 文件:

```go
module pkg2

go 1.20

require kpkg v0.0.0

replace kpkg => ../pkg1/kpkg
```

> 这里重点讲一下这个 `go.mod` 文件:
> 前面两行没什么问题, 主要是 require 语句以及 replace 语句, 这里看了一些文档才明白.
>
> require 用于添加待导入的模块名与版本号, 由于是本地模块就直接默认版本`v0.0.0` 了, 这个格式是固定的, 数字加点, 不能变.
>
> 然后就是 `replace`, 用于指定导入包的路径, 其实 gomod 的主要作用是远程模块的导入, 所以一般用离线链接, 但是这里是本地, 就用相对路径来做.

然后就是 main 文件了:

```go
package main

import (
 "fmt"
 "kpkg"
)

func main() {
 fmt.Println("main-in pkg2")
 kpkg.SayHello()
 // main-in pkg2
 // hello kkk
}
```

## 总结

1. 文件名不重要, 重要的是路径名, 也就是目录名, 模块导入时候都是依据这个来的, 这里建议不要用下划线, 而是用大小写区分目录名.
2. 在当前目录下导入模块比较简单, 写好 `go.mod` 文件即可, 在其他目录下导入模块要使用 `require` 和 `replace` 指定名称/版本和路径才行
