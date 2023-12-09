package main

import (
	"bufio"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	file, _ := os.Open("input.txt")
	defer file.Close()
	scanner := bufio.NewScanner(file)

	scanner.Scan()
	txt := scanner.Text()
	parts := strings.Split(txt, " ")

	var ns [][2]int
	for i := 1; i < len(parts); i += 2 {
		iv1, _ := strconv.Atoi(parts[i])
		iv2, _ := strconv.Atoi(parts[i+1])
		ns = append(ns, [2]int{iv1, iv2})
	}

	scanner.Scan()

	for true {
		if !scanner.Scan() {
			break
		}
		var m [][3]int
		for true {
			scanner.Scan()
			txt := scanner.Text()
			if len(txt) == 0 {
				break
			}
			parts := strings.Split(txt, " ")
			iv1, _ := strconv.Atoi(parts[0])
			iv2, _ := strconv.Atoi(parts[1])
			iv3, _ := strconv.Atoi(parts[2])
			m = append(m, [3]int{iv1, iv2, iv3})
		}
		sort.Slice(m, func(i, j int) bool {
			return m[i][1] < m[j][1]
		})

		var ns_next [][2]int
		for _, n := range ns {
			for _, v := range m {
				if n[0] < v[1] {
					n1 := n[0]
					n2 := min(n[0]+n[1], v[1])
					ns_next = append(ns_next, [2]int{n1, n2 - n1})
					n = [2]int{n2, n[1] - (n2 - n1)}
					if n[1] == 0 {
						break
					}
				}
				if n[0] < v[1]+v[2] {
					n1 := n[0]
					n2 := min(n[0]+n[1], v[1]+v[2])
					ns_next = append(ns_next, [2]int{n1 + v[0] - v[1], n2 - n1})
					n = [2]int{n2, n[1] - (n2 - n1)}
					if n[1] <= 0 {
						break
					}
				}
			}
			if n[1] > 0 {
				ns_next = append(ns_next, n)
			}
		}
		ns = ns_next
	}

	mn := ns[0][0]
	for _, n := range ns {
		mn = min(mn, n[0])
	}

	println(mn)
}
