#!/bin/ruby

n = gets.strip.to_i

VOW = ["a", "e", "i", "o", "u"]
CON = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"]

def vowel_adder(n, string="")
	i = 0
	while i < VOW.length
		tmp_string = string + VOW[i] 
		if tmp_string.length < n
			con_adder(n, tmp_string)
		elsif tmp_string.length == n
			puts tmp_string
		end
		i +=1
	end
end

def con_adder(n, string="")
	i = 0
	while i < CON.length
		tmp_string = string + CON[i] 
		if tmp_string.length < n
			vowel_adder(n, tmp_string)
		elsif tmp_string.length == n
			puts tmp_string
		end
		i +=1
	end
end

con_adder(n)
vowel_adder(n)