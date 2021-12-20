# https://adventofcode.com/2021/day/1

def load_input()
  file = File.open("input.csv", "r")
  file.readlines.each do |line|
    @input.push(line.chomp.to_i)
  end
  file.close()
end

### Part 1
@input = []
load_input()
increase_counter = 0
while @input.length > 1
  increase_counter += 1 if @input.pop() > @input[-1]
end
puts increase_counter

### Part 2
@input = []
load_input()
increase_counter = 0
i = 0
while i < @input.length - 1
  if @input[i, 3].sum < @input[i + 1, 3].sum
    increase_counter += 1
  end
  i += 1
end
puts increase_counter