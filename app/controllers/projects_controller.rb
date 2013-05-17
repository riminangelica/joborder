class ProjectsController < ApplicationController
	def new
		@project = Project.new
	end

	def create
		@project = Project.new(params[:project])
		#@user = User.find_by_id(@project.user_id)
		#if @user != nil
			if @project.save
				flash[:notice] = 'Your project was successfully created.'
				redirect_to root_path
			else
				flash[:notice] = 'Error! Your project was not saved.'
				render "new"
			end
		#else
			#flash[:notice] = 'Error! Your project was not saved, sorry.'
			#render "new"
		#end
	end

	def edit
		@project = Project.find params[:id]
	end

  def update
    @project = Project.find(params[:id])

    if @project.update_attributes(params[:book])
      flash[:notice] = "Your project was successfully updated."
      redirect_to root_path
    else
      flash[:notice] = "Failed to update"
    end
  end

	def index
		@user = User.find(params[:id])
	end

	def show
		@project = Project.find(params[:id])
	end
end
