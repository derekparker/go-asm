package bsearch

func BinarySearch(arr []int, num int) bool {
	length := len(arr)
	half := length / 2

	potential := arr[half]

	if potential == num {
		return true
	} else if potential < num && length > 1 {
		return BinarySearch(arr[half:], num)
	} else if potential > num && length > 1 {
		return BinarySearch(arr[:half], num)
	}

	return false
}
