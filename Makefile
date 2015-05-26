concurrency := 10
port := 8080

bench:
	ab -c $(concurrency) -n 10000 http://localhost:$(port)/simple

go:
	go run server.go

.PHONY: bench go
