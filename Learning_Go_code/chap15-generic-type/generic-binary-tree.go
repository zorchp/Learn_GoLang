package main

import "strings"

type Orderable[T any] interface {
	Order(T) int
}

type Tree[T Orderable[T]] struct {
	val         T
	left, right *Tree[T]
}

func (t *Tree[T]) Insert(val T) *Tree[T] {
	if t == nil {
		return &Tree[T]{val: val}
	}
	switch comp := val.Order(t.val); {
	case comp < 0:
		t.left = t.left.Insert(val)
	case comp > 0:
		t.right = t.right.Insert(val)
	}
	return t
}

type OrderableInt int

func (oi OrderableInt) Order(val OrderableInt) int {
	return int(oi - val)
}

type OrderableString string

func (os OrderableString) Order(val OrderableString) int {
	return strings.Compare(string(os), string(val))
}

func main() {
	var it *Tree[OrderableInt]
	it = it.Insert(OrderableInt(5))
	it = it.Insert(OrderableInt(3))
	it = it.Insert(OrderableInt(4))
	it = it.Insert(OrderableString("nihao"))
}
