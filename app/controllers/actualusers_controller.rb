class ActualusersController < ApplicationController
	def new
  		@actualuser = Actualuser.new
	end
	
	def create 
	  @actualuser = Actualuser.new(user_params) 
	  if @actualuser.save 
		session[:user_id] = @actualuser.id 
		redirect_to '/' 
	  else 
		redirect_to '/signup' 
	  end 
	end
	
	private
	def user_params
		params.require(:actualuser).permit(:username, :password)
	end
end
