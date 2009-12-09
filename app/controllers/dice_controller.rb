class DiceController < ApplicationController
	def index
		@rolls = Roll.find(:all, :order => "id DESC",:limit=>5)
	end

	def shake
		dice = Dice.new
		@result = dice.shake
		roll = Roll.new
		roll.value = @result
		roll.save 
	end

	def report
		@report =  Roll.count
		@statistics = Roll.count(:group => :value)
	end

	def gamble
		if request.post?
			dealer = Dealer.new
			dealer.shake!
			@chouhan = dealer.chouhan
			@result = dealer.judge(params[:expected])
			@values = dealer.values
		end
	end
end
