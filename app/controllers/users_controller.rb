class UsersController < ApplicationController
  before_filter :authenticate_user!, except: [:show]
  def show

  end

end
