class UsersController < ApplicationController
	def show
		if params[:username]
			@user = User.where(:username => params[:username]).first
		else
			@user = current_user
		end
		@projects = @user.projects.first(5) if @user
	end
end