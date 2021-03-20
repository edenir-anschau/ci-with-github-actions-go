package main

import "testing"

func Test_Name(t *testing.T) {
	r := hello()

	if r != "Hello World!!" {
		t.Error()
	}
}
