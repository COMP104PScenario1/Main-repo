class TodolistController < ApplicationController
	def show
		@user = User.find_by(username: params[:username])
		@listelements = @user.listelements
	end
end
