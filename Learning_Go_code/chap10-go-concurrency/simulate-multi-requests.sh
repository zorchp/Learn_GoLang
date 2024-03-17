#!/bin/bash

maxRequestNum=11

for ((i = 1; i <= $maxRequestNum; i++)); do
	curl -X GET http://localhost:8080/request &
done

wait
