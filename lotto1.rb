def find_winners(our_ticket, winning_tickets)
	matches = []
	winning_tickets.each do |winning_ticket|
		if winning_ticket == our_ticket
			matches << our_ticket
		end
	end
	matches
end

def one_off(my_ticket, winning_tickets)
	dont_match = 0
	i = 0

	4.times do
		if my_ticket[i] != winning_tickets[i]
			dont_match += 1
		end
		i += 1
	end

	dont_match == 1
end

def array_one_off(my_ticket, winning_tickets)
	tickets_one_off = []
	winning_tickets.each do |tick|
		if one_off(my_ticket, tick)
			tickets_one_off << tick
		end
	end
	tickets_one_off
end