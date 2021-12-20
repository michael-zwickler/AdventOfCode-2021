# https://adventofcode.com/2021/day/2

def load_input()
  input = []
  file = File.open("input.csv", "r")
  file.readlines.each do |line|
    input.push(line.chomp.split(' '))
  end
  file.close()
  return input
end

### Part 1
input = load_input()
horizontal = 0
depth = 0

input.each do |array|
  key = array[0]
  value = array[1].to_i

  horizontal += value if key == 'forward'
  depth -= value if key == 'up'
  depth += value if key == 'down'
end

puts depth * horizontal

### Part 2
input = load_input()
horizontal = 0
depth = 0
aim = 0

input.each do |array|
  key = array[0]
  value = array[1].to_i

  aim -= value if key == 'up'
  aim += value if key == 'down'

  if key == 'forward'
    horizontal += value
    depth += aim * value
  end
end

puts depth * horizontal