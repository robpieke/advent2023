lines = File.read("input.txt").lines
card_count = Array.new(lines.size, 1)
lines.each_with_index do |line, i|
  cards = line.partition(':')[2].partition('|')
  matches = (cards[0].split.to_set & cards[2].split.to_set).size
  card_count[i+1..i+matches] = card_count[i+1..i+matches].map do |n|
    n + card_count[i]
  end
end
puts card_count.sum
