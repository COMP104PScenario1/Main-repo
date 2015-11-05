class TodolistController < ApplicationController
	def show
		@actualuser = Actualuser.find(session[:user_id])
		@actuallistelements = @actualuser.actuallistelements
	end
	
	def new
		@actuallistelement = Actuallistelement.new
	end
	
	def create
		@actuallistelement = Actuallistelement.new(actuallistelement_params)
		if @actuallistelement.save
			redirect_to '/actuallistelements'
		else
			render 'new'
		end
	end
	
	private
	def actuallistelement_params
		params.require(:actuallistelement).permit(:time, :task, :actualuser_id)
	end
end
