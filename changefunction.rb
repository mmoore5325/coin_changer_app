# def coin_changer(cents)
# 	coins = {}
# 		q = 0
# 		d = 0
# 		n = 0
# 		p = 0



# 	while cents >= 25
# 		coins[:quarters] = cents - 25
# 		cents = cents - 25
	
# 		q += 1
# 	end

# 	while cents >= 10
# 		coins[:dimes] = cents - 10
# 		cents = cents - 10
		
# 		d = d + 1
# 	end

# 	while cents >= 5
# 		coins[:nickles] = cents - 5
# 		cents = cents - 5
		
# 		n = n + 1
# 	end 
	
# 	if cents >= 1
# 		coins[:pennies] = cents
# 		p = cents
# 	else
# 		coins[:pennies] = 0
# 	end
# 		coins
# 		return {:quarters=>q, :dimes=>d, :nickels=>n, :pennies=>p}
# end

def coin_changer(cents)
	coins = {}
	sorter = {:quarters =>25, :dimes =>10, :nickles=>5, :pennies =>1}
		sorter.each do |key, value|
			if cents >= value
				coins[key] = cents / value
				cents = cents % value
			end
			
		end
		# if key == :penny >= 2
		# 	:penny = :pennies
		# elsif value >= 2
		# 	key = key + "s"
		# else
		coins
	end

	def jake(coins)
		change = ""
		
		coins.each do |key, value|
			# if key.to_s != "pennies"  && value < 2
			# 	key.to_s = key.to_s.gsub("s", "")
			
			# if key.to_s != "pennies" && value == 1
			# 	key.to_s = key.gsub("s", "")
			# end
			
			if key.to_s != "pennies"
			change << value.to_s + " " + key.to_s + ", "
			
				elsif key.to_s == "pennies" && value == 1
					key = "penny"
					change << value.to_s + " " + key.to_s + "."
			
				else
					change << value.to_s + " " + key.to_s + "."
			end
	
		# end
		end
		change
	end