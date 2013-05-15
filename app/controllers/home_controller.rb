class HomeController < ApplicationController
	before_filter :authenticate_user!#, except: [:welcome]


    def index
    #@values_for_select = Service.values_for_select
    #@projects = Project.where(:user_id => current_user.id)
  end


  def welcome
  	@completed = Project.where(:user_id => current_user.id,
  		:project_status => "Completed")
  	@inProgress = Project.where(:user_id => current_user.id,
  		:project_status => "In Progress")
  	@projects = Project.where(:user_id => current_user.id)
  	
  	@pending = Order.where(:user_id => current_user.id,
  		:status => "Pending")
  	@current_orders = Order.where(:user_id => current_user.id,
  		:status => "In Progress")
  	@completed_orders = Order.where(:user_id => current_user.id,
  		:status => "Completed")
  end

end
