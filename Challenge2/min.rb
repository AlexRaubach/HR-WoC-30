#!/bin/ruby

n = gets.strip.to_i

i = 2

output = "min(int, int)"

while i < n
	output = "min(int, "+output+")"
	i += 1
end
puts output