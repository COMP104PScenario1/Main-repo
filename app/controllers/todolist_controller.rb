class TodolistController < ApplicationController
	def show
		@user = User.find_by(username: 'robert')
		@listelements = @user.listelements
	end
end
