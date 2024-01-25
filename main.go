package main

import (
	"fmt"
	"os"
)

func main() {

	fmt.Println("INPUT_TEST_ENV_VARIABLE:", os.Getenv("INPUT_TEST_ENV_VARIABLE"))
}
