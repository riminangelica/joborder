class OrdersController < ApplicationController
  before_filter :authenticate_user!, except: [:new, :create]
  def new
		@order = Order.new
	end

	def create
		@order = Order.new(params[:order])
		#@user = User.find_by_id(@order.user_id)
		#if @user != nil
		@order.status = "Pending"
			if @order.save
				flash[:notice] = 'Your order was successfully created.'
				if user_signed_in?
					redirect_to root_path
				else
					redirect_to "/users/home"
				end
			else
				flash[:notice] = 'Error! Your order was not saved.'
				render "new"
			end
		#else
			#flash[:notice] = 'Error! Your order was not saved, sorry.'
			#render "new"
		#end
	end

	def edit
		@order = Order.find params[:id]
	end

  def update
    @order = Order.find(params[:id])

    if @order.update_attributes(params[:order])
      flash[:notice] = "Your order was successfully updated."
      redirect_to root_path
    else
      flash[:notice] = "Failed to update"
    end
  end

	def index
		@user = User.find(params[:id])
	end

	def show
		@order = Order.find(params[:id])
	end

	def accept
		@order = Order.find(params[:id])
		@order.status = "In Progress"
		if @order.save
			flash[:notice] = "Challenge accepted!"
			redirect_to root_path
		end
	end

	def finish
		@order = Order.find(params[:id])
		@order.status = "Completed"
		if @order.save
			flash[:notice] = "Congratulations! You have finished the job request."
			redirect_to root_path
		end
	end

	def revise
		@order = Order.find(params[:id])
		@order.status = "In Progress"
		if @order.save
			flash[:notice] = "Your project is now back in progress."
			redirect_to root_path
		end
	end
end
