class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)
  	#unless current_user.sign_in_count > 0
	 		edit_user_registration_path
	 	#end
	end
end
