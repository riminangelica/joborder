class UsersController < ApplicationController
  before_filter :authenticate_user!, except: [:show]
  def show
  	@user = User.find_by_username(params[:username])
  	@completed = Project.where(:user_id => @user.id,
  		:project_status => "Completed")
  	@inProgress = Project.where(:user_id => @user.id,
  		:project_status => "In Progress")
  	@projects = Project.where(:user_id => @user.id)
  	
  	@pending = Order.where(:user_id => @user.id,
  		:status => "Pending")
  	@current_orders = Order.where(:user_id => @user.id,
  		:status => "In Progress")
  	@completed_orders = Order.where(:user_id => @user.id,
  		:status => "Completed")
  end

end
