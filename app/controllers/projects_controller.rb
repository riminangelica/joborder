class ProjectsController < ApplicationController
def new

end


def edit
  @project = Project.find params[:id]
end

def update
  @project = Project.new(params[:project])
  if @project.save
    flash[:notice] = "Event created."
    redirect_to new_project_path
  else
    message_error=[]
    message_error << "<b>Project could not be created:</b>"
    for x in @eproject.errors.full_messages
      message_error << "* " + x

      a = message_error.map {|str| "#{str}"}.join("</br>").html_safe
      flash[:notice] = a
    end
    redirect_to new_project_path
  end
end

def index
  @user = User.find_by_username(params[:username])
end

def show
  @project = Project.find_by_title(params[:title])
  @user = User.find_by_username(params[:username])
end
end
