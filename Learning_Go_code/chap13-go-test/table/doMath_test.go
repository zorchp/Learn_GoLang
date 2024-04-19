package table

import "testing"

func TestDoMath(t *testing.T) {
	// old version, complex...

	result, err := DoMath(2, 2, "+")
	if result != 4 {
		t.Errorf("should have been 4, got %d", result)
	}
	if err != nil {
		t.Errorf("should have been nil error, got %v", err)
	}
	result2, err2 := DoMath(2, 2, "-")
	if result2 != 0 {
		t.Errorf("should have been 0, got %d", result2)
	}
	if err2 != nil {
		t.Errorf("should have been nil error, got %v", err2)
	}

	// use table to test
	data := []struct {
		name     string
		num1     int
		num2     int
		op       string
		expected int
		errMsg   string
	}{
		{"addition", 2, 2, "+", 4, ""},
		{"subtraction", 2, 2, "-", 0, ""},
		{"multiplication", 2, 2, "*", 4, ""},
		{"division", 2, 2, "/", 1, ""},
		{"bad_division", 2, 0, "/", 0, "division by zero"},
		{"unknown operator", 2, 0, " ", 0, "unknown operator  "},
	}

	for _, d := range data {
		t.Run(d.name, func(t *testing.T) {
			result, err := DoMath(d.num1, d.num2, d.op)
			if result != d.expected {
				t.Errorf("expected %d, got %d", d.expected, result)
			}
			var errMsg string
			if err != nil {
				errMsg = err.Error()
			}
			if errMsg != d.errMsg {
				t.Errorf("expected error message %s, got %s", d.errMsg, errMsg)
			}
		})
	}
}
