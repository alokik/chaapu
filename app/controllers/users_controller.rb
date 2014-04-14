class UsersController  < ApplicationController

	before_filter :authenticate, only: [:show]

	def show
		user = User.find(params[:id])
		@dishes = user.foods
		@no_of_dishes = @dishes.count	
	end

	private 
		def authenticate
			redirect_to home_path unless user_signed_in? && User.find(params[:id])== current_user
		end

end