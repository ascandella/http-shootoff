concurrency := 10
num := 10000
port := 8080

bench:
	ab -c $(concurrency) -n $(num) http://localhost:$(port)/simple

go:
	go build server.go
	./server

flask:
	gunicorn -w 4 f:app -b '127.0.0.1:$(port)'

.PHONY: bench go flask
