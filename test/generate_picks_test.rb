require_relative "../picker_pickem_pickash"
require "test/unit"

class TestGeneratePicks < Test::Unit::TestCase

	include PickerPickemPickash

	def rand(num)
		1
	end

	def test_boobs_with_zero
		assert_equal("st", bqqbs(0));
	end

	def test_boobs_with_one
		assert_equal("nd", bqqbs(1));
	end

	def test_boobs_with_two
		assert_equal("rd", bqqbs(2));
	end

	def test_boobs_with_others
		assert_equal("th", bqqbs(3));
		assert_equal("th", bqqbs(30));
		assert_equal("th", bqqbs(999999999));
		assert_equal("th", bqqbs(-1230));
	end

	def test_output_string
		assert_equal("For the 1st game, pick the team on the right", generate_pick(0))
		assert_equal("For the 2nd game, pick the team on the right", generate_pick(1))
		assert_equal("For the 3rd game, pick the team on the right", generate_pick(2))
		assert_equal("For the 40th game, pick the team on the right", generate_pick(39))
	end
end
