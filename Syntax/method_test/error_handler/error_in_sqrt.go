package main

import (
	"fmt"
	"math"
)

type ErrNegativeSqrt float64

func (e ErrNegativeSqrt) Error() string {
	return fmt.Sprintf("cannot Sqrt negative number: %v", float64(e))
	// return fmt.Sprintf("cannot Sqrt negative number: %v", e)
	// must cast, otherwise dead loop
}

func Sqrt(x float64) (float64, error) {
	if x < 0 { //error
		return x, ErrNegativeSqrt(x)
	}
	z := 1.0
	for {
		if math.Abs(z*z-x) < 1e-13 {
			return z, nil //right ans
		}
		z -= (z*z - x) / 2 / z
	}
}

func Sqrt_cmplx(x complex128) (complex128, error) {
	return x, nil
}

func main() {
	fmt.Println(Sqrt(2))
	fmt.Println(Sqrt(-2))
	//fmt.Println(Sqrt(1 + 2i))
}
