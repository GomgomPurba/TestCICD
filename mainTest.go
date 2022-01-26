package test

import "testing"

func testAdd(t *testing.T) {
	actual := Add(1, 2)
	expected := 3

	if actual != expected {
		t.Errorf("actual %q, expected %q", actual, expected)
	}
}
