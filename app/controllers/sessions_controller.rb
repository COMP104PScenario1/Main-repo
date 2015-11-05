class SessionsController < ApplicationController
	def new
	end
	
	def create
	  	@actualuser = Actualuser.find_by(username: params[:session][:username])
	  	if @actualuser && @actualuser.authenticate(params[:session][:password])
			session[:user_id] = @actualuser.id
			redirect_to '/'
	  	else
			redirect_to 'login'
	  	end 
	end
end
