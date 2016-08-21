package main

import "fmt"

func fibo(n int) int {
	if n == 0 {
		return 0
	} else if n == 1 {
		return 1
	} else {
		return fibo(n - 2) + fibo(n - 1)
	}
}

func main() {
	fmt.Println(fibo(40))
}
