class HomeController < ApplicationController
	before_filter :authenticate_user!, except: [:welcome]


    def index
    #@values_for_select = Service.values_for_select
    #@projects = Project.where(:user_id => current_user.id)
  end


  def welcome
  	#@projects = Project.where(:user_id => current_user.id)
  	#@orders = Order.where(:user_id => current_user.id)
  end

end
