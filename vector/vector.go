package vector

func Find(vec []int, num int) bool

func SumVec(vec1 []int32, vec2 []int32) []int32 {
	i := 0
	for _ = range vec1 {
		vec2[i] = vec1[i] + vec2[i]
		i++
	}
	return vec2
}
