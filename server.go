package main

import "net/http"

var response = []byte("hello")

func main() {
	http.HandleFunc("/simple", func(w http.ResponseWriter, r *http.Request) {
		w.Write(response)
	})
	http.ListenAndServe(":8080", nil)
}
