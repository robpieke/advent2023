total = 0

File.foreach('input.txt') do |line|
    match = /([#.?]+) ([\d,]+)/.match(line)
    pat = match[1]
    qmarks = (0 ... pat.length).find_all { |i| pat[i] == '?' }
    nums = match[2].split(',').map{ |s| s.to_i }
    re_str = '^\.*'
    nums.each { |n| re_str += "\#{#{n}}\.+" }
    re_str = re_str.chomp('+') + '*$'
    re = Regexp.new(re_str)
    nhash = nums.sum - pat.count('#')
    qmarks.combination(nhash).each do |hashes|
        newpat = pat.gsub('?', '.')
        hashes.each { |pos| newpat[pos] = '#' }
        total += (re.match?(newpat) ? 1 : 0)
    end
end

puts total
