concurrency := 10
num := 10000
port := 8080

bench:
	ab -c $(concurrency) -n $(num) http://localhost:$(port)/simple

go:
	go build server.go
	./server

.PHONY: bench go
