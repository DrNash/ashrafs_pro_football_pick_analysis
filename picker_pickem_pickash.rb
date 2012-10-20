module PickerPickemPickash
	def bqqbs(i)
	  case i + 1
	  when 1
	    "st"
	  when 2
	    "nd"
	  when 3
	    "rd"
	  else
	    "th"
	  end
	end

	def generate_pick(pick_number)
		"For the #{pick_number+1}#{bqqbs(pick_number)} game, pick the team on the #{rand(2) == 0 ? "left" : "right"}"
	end

	def rand(num)
		Kernel.rand(num)
	end
end