package vector

import "testing"

func TestFind(t *testing.T) {
	vec := []int{1, 2, 3, 4, 5, 6, 7, 8}
	if result := Find(vec, 5); result != true {
		t.Errorf("Could not find number in vector, got: %v", result)
	}

	if result := Find(vec, 10); result != false {
		t.Errorf("Returned true when false was expected")
	}
}
