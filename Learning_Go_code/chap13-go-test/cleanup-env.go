package main

import (
	"fmt"
	"os"
	"testing"
)

// createFile is a helper func called from multiple tests

func createFile(t *testing.T) (string, error) {
	f, err := os.Create("tempFile")
	if err != nil {
		return "", nil
	}
	// write some data to f
	t.Cleanup(func() {
		os.Remove(f.Name())
	})
	return f.Name(), nil
}

func TestFileProcessing(t *testing.T) {
	filename, err := createFile(t)
	if err != nil {
		t.Fatal(err)
	}
	fmt.Println(filename)
}

