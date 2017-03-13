candy_total,time = gets.strip.split(' ')
candy_total = candy_total.to_i
time = time.to_i
c = gets.strip
c = c.split(' ').map(&:to_i)

i = 1 #nothing happens at i = 0
candy_in_bowel = candy_total
candies_refilled = 0

while i <= time
	

	if i < time && candy_in_bowel < 5 #only refill while the party is ongoing and the bowel is low
		candies_refilled += candy_total - candy_in_bowel
		candy_in_bowel = candy_total
	end

end
puts candies_refilled