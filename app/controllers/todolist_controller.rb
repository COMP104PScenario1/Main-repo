class TodolistController < ApplicationController
	before_action :require_user, only: [:show, :new, :create]

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
	
	def edit
		@actuallistelement = Actuallistelement.find(params[:id])
	end
	
	def update 
		@actuallistelement = Actuallistelement.find(params[:id]) 
		if @actuallistelement.update_attributes(actuallistelement_edit_params) 
			redirect_to(:action => 'show', :id => @actuallistelement.id) 
		else 
			render 'edit' 
		end 
	end
	
	private
	def actuallistelement_params
		params.require(:actuallistelement).permit(:time, :task, :actualuser_id)
	end
	
	def actuallistelement_edit_params
		params.require(:actuallistelement).permit(:time, :task)
	end
end
