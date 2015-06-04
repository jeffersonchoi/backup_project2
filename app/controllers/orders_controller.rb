class OrdersController < ApplicationController

  def index
    @user = User.find(current_user.id)
    @orders = @user.orders.all
  end

  def show
    @user = User.find(current_user.id)
    @order = @user.orders.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
		 @order = Order.new(params.require(:order).permit(:created_at, :updated_at))
     @order.user_id = current_user.id

		if @order.save
		  redirect_to user_path
		else
		  render :new
		end
	end

  private
  	def order_params
  	  params.require(:order).permit(:user_id, :created_at, :updated_at)
  	end


end
