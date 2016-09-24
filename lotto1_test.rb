require "minitest/autorun"
require_relative "lotto1.rb"

class TestWinningNumbers <Minitest::Test
	
	def test_one_equals_one
		assert_equal(1,1)
	end

	def test_no_winning_tickets_returns_empty_array
		our_ticket = "1234"
		winning_tickets = []
		assert_equal([], find_winners(our_ticket, winning_tickets))
	end

	def test_no_matches_returns_empty_array
		my_ticket = "1234"
		winning_tickets = ["1111", "2222", "3333"]
		assert_equal([], find_winners(my_ticket, winning_tickets))
	end

	def test_return_array_with_winning_ticket_with_single_match
		my_ticket = "1234"
		winning_tickets = ["1234"]
		assert_equal(["1234"], find_winners(my_ticket,winning_tickets))
	end

	def test_multiple_matches_get_returned
		my_ticket = "1234"
		winning_tickets = ["1234", "2345", "8765", "1234"]
		assert_equal( ["1234", "1234"], find_winners(my_ticket, winning_tickets))
	end


# close but no cigar:
# -write a function that takes two 4-digit numbers as strings and returns true if they are off by one digit. eg "1234" is off by one form "0234".

	def test_matching_ticket_returns_false
        my_ticket = "4567"
        winning_tickets = "4567"
        assert_equal(false, one_off(my_ticket, winning_tickets))
    end

    def test_ticket_off_by_1_returns_true
        my_ticket = "1234"
        winning_tickets = "1235"
        assert_equal(true, one_off(my_ticket, winning_tickets))
    end

    def test_last_3_digits_the_same_returns_true
    	assert_equal(true, one_off("1234", "0234"))
    end
end


# - Write a function that takes a 4-digit numbr as a string, and an array containing winning tickets (also as strings). The function should return an array containing any winning tickets that is off by one from your number.


class TestTicketsOffByOne <Minitest::Test

	def test_no_winning_tickets_return_empty_array
		my_ticket = "1234"
		winning_tickets = []
		assert_equal([], array_one_off(my_ticket, winning_tickets))		
	end

	def test_no_match_winning_tickets_return_empty_array
		my_ticket = "1234"
		winning_tickets = ["5678"]
		assert_equal([], array_one_off(my_ticket, winning_tickets))
	end

	def test_off_by_one_returns_array_of_winning_ticket
		my_ticket = "1234"
		winning_tickets = ["0234"]
		assert_equal(["0234"], array_one_off(my_ticket, winning_tickets))
	end

	def test_off_by_one_returns_array_of_winning_tickets
		my_ticket = "1234"
		winning_tickets = ["0234", "0000", "1235"]
		assert_equal(["0234", "1235"], array_one_off(my_ticket, winning_tickets))
	end

	def test_off_by_one_returns_array_of_winning_tickets
		my_ticket = "1234"
		winning_tickets = ["0234", "0000", "1235", "1134"]
		assert_equal(["0234", "1235", "1134"], array_one_off(my_ticket, winning_tickets))
	end
end