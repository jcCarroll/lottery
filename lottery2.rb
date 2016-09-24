###### The winning tickets will be passed as strings for this function.  sorry about the confusion. ######

def off_by_one(my_ticket, winning_tickets)
	i = 0
	c = 0
	my_ticket.length.times do
		if my_ticket[i] == winning_tickets[i]			
			c += 1
		end
		i += 1
	end
	c == my_ticket.length - 1 ? true : false
end



###### Extend close-but-no-cigar:- Write a function that takes a 4-digit number as a string, and an array containing winning tickets (also as strings). The function should return an array containing any winning tickets that is off by one from your number. Use the previous function we have built.   Above are some test to run with this fuction. ######

def off(my_ticket, winning_tickets)
	matches = []
	i = 0
	c = 0
	winning_tickets.each do |tick|
		my_ticket.length.times do
			if winning_tickets == []
				matches
			else
				 my_ticket[i] == tick[i]
					c += 1
			end
			if c == my_ticket.length - 1
			matches.push(tick)
			end
			i = i + 1
		end
	end
	matches
end