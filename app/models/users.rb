class User
	def name
		puts "What is your name?"
		name = gets.chomp
	end

	def birthdate
		puts "What month were you born? (please give answer in a number 1-12)"
		birth_month = gets.chomp.to_i

		puts "Which day of that month?"
		birth_day = gets.chomp.to_i



	end
    
    def calc
    	today = Date.today
    	birthday = Date.new(today.year, birth_month, birth_day)
    	if birthday - 183 > today 
    		half = (birthday - 183 - today).to_i
    	else
    		half = (birthday.next_year - 183 - today).to_i
    	end


    	if birthday - 122 > today
    		third = (birthday - 122 - today).to_i
    	else
    		third = (birthday.next_year - 122 - today).to_i
    	end

    	puts "Half Birthday: #{half}"
    	puts "2/3 Birthday: #{third}"

    end
end




