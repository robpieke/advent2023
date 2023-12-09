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

	var ns []int
	for _, sv := range parts[1:] {
		iv, _ := strconv.Atoi(sv)
		ns = append(ns, iv)
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
			return m[i][1] > m[j][1]
		})
		for i, n := range ns {
			for _, v := range m {
				if n >= v[1] {
					if n < v[1]+v[2] {
						ns[i] = v[0] + n - v[1]
					}
					break
				}
			}
		}
	}

	mn := ns[0]
	for _, n := range ns {
		mn = min(mn, n)
	}

	println(mn)
}
