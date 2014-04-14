class FoodsController < ApplicationController

	def add_food
		name = params[:nod]
		outlet_id = params[:outlet_id]
		f = Food.add_food(current_user, name, outlet_id, "", "", "", "")
		if f
			flash[:success] = "Congrats, Successfully saved"
		else
			flash[:error] = "Sorry, some error occured"
		end
		redirect_to :back
	end

end
