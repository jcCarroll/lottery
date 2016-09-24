require "minitest/autorun"
require_relative "lottery.rb"

class TestLotteryNumbers <Minitest::Test
	def test_to_check_winner
		winners = ["1234", "2567", "1984", "3756"]
		my_num = "2567"
		assert_equal(["2567"], grand_lotto(winners, my_num))
	end

	def test_to_check_loser
		winners = ["1234", "2567", "1984", "3756"]
		my_num = "5447"
		assert_equal([], grand_lotto(winners, my_num))
	end
end