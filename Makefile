concurrency := 10
num := 10000
port := 8080

bench:
	siege --quiet -c $(concurrency) -b -r $(num) http://localhost:$(port)/simple

go:
	go build server.go
	./server

.PHONY: bench go
