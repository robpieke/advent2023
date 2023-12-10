local rules = nil
local map = {}

for line in io.lines("input.txt") do
    if not rules then
        rules = line
    elseif line ~= "" then
        local _, _, k, l, r = line:find("(...) = %((...), (...)%)")
        map[k] = { L = l, R = r }
    end
end

local state = "AAA"
local moves = 0

repeat
    moves = moves + 1
    local idx = (moves - 1) % #rules + 1
    state = map[state][rules:sub(idx, idx)]
until state == "ZZZ"

print(moves)
