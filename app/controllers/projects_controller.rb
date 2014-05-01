class ProjectsController < ApplicationController
	before_filter :authenticate_user!

	def index
		get_projects
	end

	def new
		@project = Project.new
	end

	def create
		@project = current_user.projects.create(project_params)
		if @project.save
			redirect_to @project
		else
			render "new"
		end
	end

	def show
		@project = Project.find(params[:id])
	end

	private

	def get_projects
		if params[:username]
			@user = User.where(:username => params[:username]).first
      		@projects = @user.projects if @user
      	else
			@projects = current_user.projects
		end
	end

	def project_params
		params.require(:project).permit(:name)
	end
end