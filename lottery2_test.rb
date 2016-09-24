require "minitest/autorun"
require_relative "lottery2.rb"
###### one off ######
class TestLotteryNumbers <Minitest::Test    
    def test_matching_ticket_returns_false
        my_ticket = "4567"
        winning_tickets = "4567"
        assert_equal(false, off_by_one(my_ticket, winning_tickets))
    end

    def test_ticket_off_by_2_numbers_returns_false
        my_ticket = "4567"
        winning_tickets = "4589"
        assert_equal(false, off_by_one(my_ticket, winning_tickets))
    end

    def test_ticket_off_by_1_returns_true
        my_ticket = "4456"
        winning_tickets = "5456"
        assert_equal(true, off_by_one(my_ticket, winning_tickets))
    end

    def test_ticket_5_numbers_off_by_1_number_returns_true
        my_ticket = "45674"
        winning_tickets = "45675"
        assert_equal(true, off_by_one(my_ticket, winning_tickets))
    end

    def test_ticket_7_numbers_off_by_1_number_returns_true
        my_ticket = "1234567"
        winning_tickets = "1234566"
        assert_equal(true, off_by_one(my_ticket, winning_tickets))
    end
end




###### Extend close-but-no-cigar ######

class TestLotteryNumbers <Minitest::Test
    def test_no_winning_tickets_returns_empty_array
        my_ticket = "4567"
        winning_tickets = []
        assert_equal([], off(my_ticket, winning_tickets))
    end

    def test_winning_tickets_off_by_one_returns_array_with_two_winning_tickets
        my_ticket = "4567"
        winning_tickets = ["5567", "8795", "4597"]
        assert_equal(["5567", "4597"], off(my_ticket, winning_tickets))
    end
end