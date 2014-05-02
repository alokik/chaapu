class OutletsController < ApplicationController	

	def index  
	# I will explain this part in a moment.
	  if params[:term]
	    @outlets = Outlet.find(:all,:conditions => ['given_name LIKE ?', "#{params[:term]}%"])
	  else
	    @outlets = Outlet.all
	  end

	  respond_to do |format|  
	    format.html # index.html.erb  
	# Here is where you can specify how to handle the request for "/people.json"
	    format.json { render :json => @outlets.to_json }
	    end
	end

end