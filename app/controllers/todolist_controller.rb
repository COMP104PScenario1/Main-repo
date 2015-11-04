class TodolistController < ApplicationController
	def show
		@user = User.find(params[:id])
		@listelements = @user.listelements
	end
end
