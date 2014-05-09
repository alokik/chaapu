class FoodsController < ApplicationController
  
  autocomplete :outlet, :name, :full=> true
	before_filter :logged_in?, only: [:add_food]
	def add_food
		name = params[:nod]
		outlet_id = params[:outlet_id]
		status,food = Food.add_food(current_user, name, outlet_id, "", "", "", "")
		if status
			re = Review.add_review(current_user.id, params[:comment], food.id)
			if re
				flash[:success] = "Congrats, Successfully saved"
			else
				flash[:error] = "Sorry, some error occured"
			end
		else
			flash[:error] = "Sorry, some error occured"
		end
		redirect_to :back
	end

	def index
		@foods = Food.search (params[:query])
	end 

	private 
		def logged_in?
			if !user_signed_in?
				redirect_to new_user_session_path
			end
		end
end
