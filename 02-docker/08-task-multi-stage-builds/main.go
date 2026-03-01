package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello, from a multi-stage build!")
	})
	http.ListenAndServe(":8080", nil)
}
