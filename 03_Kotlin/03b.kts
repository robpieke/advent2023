import java.io.File

val lines = File("input.txt").readLines()
var sum = 0

lines.forEachIndexed { y, line ->
    line.forEachIndexed { x, char ->
        if (char == '*') {
            val parts = mutableMapOf<Pair<Int, Int>, Int>();
            for (yy in y-1 .. y+1) {
                if (yy < 0 || yy >= lines.size) continue
                val line = lines[yy];
                for (xx in x-1 .. x+1) {
                    if (xx < 0 || xx >= line.length) continue
                    if (!line[xx].isDigit()) continue
                    var xmin = xx
                    while (xmin > 0 && line[xmin-1].isDigit()) xmin--
                    var xmax = xx
                    while (xmax < line.length-1 && line[xmax+1].isDigit()) xmax++
                    parts[Pair(xmin, yy)] = line.substring(xmin, xmax+1).toInt()
                }
            }
            if (parts.size == 2) {
                sum += parts.values.reduce(Int::times)
            }
        }
    }
}

println(sum)
