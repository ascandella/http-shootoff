package main

import (
	"net/http"
	"runtime"
)

var response = []byte("hello")

func main() {
	runtime.GOMAXPROCS(runtime.NumCPU())
	http.HandleFunc("/simple", func(w http.ResponseWriter, r *http.Request) {
		w.Write(response)
	})
	http.ListenAndServe(":8080", nil)
}
