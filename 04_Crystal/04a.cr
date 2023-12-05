sum = 0
File.read("input.txt").each_line do |line|
  cards = line.partition(':')[2].partition('|')
  matches = (cards[0].split.to_set & cards[2].split.to_set).size
  sum += 2 ** matches // 2
end
puts sum
