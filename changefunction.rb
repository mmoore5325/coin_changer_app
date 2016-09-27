# def coin_changer(cents)
# 	coins = {}
# 		q = 0
# 		d = 0
# 		n = 0
# 		p = 0



# 	while cents >= 25
# 		coins[:quarter] = cents - 25
# 		cents = cents - 25
	
# 		q += 1
# 	end

# 	while cents >= 10
# 		coins[:dime] = cents - 10
# 		cents = cents - 10
		
# 		d = d + 1
# 	end

# 	while cents >= 5
# 		coins[:nickle] = cents - 5
# 		cents = cents - 5
		
# 		n = n + 1
# 	end 
	
# 	if cents >= 1
# 		coins[:penny] = cents
# 		p = cents
# 	else
# 		coins[:penny] = 0
# 	end
# 		coins
# 		return {:quarters=>q, :dime=>d, :nickels=>n, :penny=>p}
# end

def coin_changer(cents)
	coins = {}
	sorter = {:quarter => 25, :dime =>10, :nickle=> 5, :penny =>1}
		sorter.each do |key, value|
			if cents >= value
				coins[key] = cents / value
			end
			cent = cents % value
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
			change << ", " + value.to_s + ", " + key.to_s
		end
		change
	end