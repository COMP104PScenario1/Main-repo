class ActuallistelementsController < ApplicationController

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
	
	def show
		redirect_to action: "index"
	end
	
	def actuallistelement_edit_params
		params.require(:actuallistelement).permit(:time, :task)
	end
	
	def destroy
		@actuallistelement = Actuallistelement.find(params[:id]).destroy
		redirect_to(:action => 'show', :id => @actuallistelement.id)
	end
end
