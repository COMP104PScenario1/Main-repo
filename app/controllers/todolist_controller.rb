class TodolistController < ApplicationController
	def show
		@actualuser = Actualuser.find(session[:user_id])
		@actuallistelements = @actualuser.actuallistelements
	end
end
