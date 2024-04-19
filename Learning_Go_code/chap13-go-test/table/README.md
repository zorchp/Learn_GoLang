go test -v -cover -coverprofile=c.out
=== RUN   TestDoMath
=== RUN   TestDoMath/addition
=== RUN   TestDoMath/subtraction
=== RUN   TestDoMath/multiplication
=== RUN   TestDoMath/division
=== RUN   TestDoMath/bad_division
--- PASS: TestDoMath (0.00s)
    --- PASS: TestDoMath/addition (0.00s)
    --- PASS: TestDoMath/subtraction (0.00s)
    --- PASS: TestDoMath/multiplication (0.00s)
    --- PASS: TestDoMath/division (0.00s)
    --- PASS: TestDoMath/bad_division (0.00s)
PASS
coverage: 87.5% of statements
ok  	table	0.004s



go tool cover -html=c.out
