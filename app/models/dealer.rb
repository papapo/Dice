class Dealer
	attr_reader :values
	def initalize
		@dice = [Dice.new,Dice.new]
	end
	def chouhan
		if self.even?
			"丁"
		else
			"半"
		end
	end
	def shake!
		@values = [@dice[0].shake, @dice[1].shake]
	end

	def even?
		(@values[0]+@values[1]).even?
	end

	def odd?
		(@values[0]+@values[1]).odd?
	end

	def judge(expected)
		self.shake!
		if expected == self.chouhan
			:win
		else
			:loose
		end
	end
end

