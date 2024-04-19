package main

import "testing"

func Test_addNumbers(t *testing.T) {
	result := addNumbers(2, 3)
	if result != 5 {
		// t.Error("incorrect result: expceted 5, got ", result)
		t.Errorf("incorrect result: expceted %d, got %d", 5, result)
	}
}
