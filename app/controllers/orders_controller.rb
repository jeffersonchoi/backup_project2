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
    @user = User.find(current_user.id)
    @order = User.order.find(:id)
    @order = Order.new
		@orderline = Orderline.new
  end

  def create
    @user = User.find(current_user.id)
    @order = User.order.find(:id)
    @orderline = Orderline.new(orderline_params)

     if @orderline.save
       @order.user_id = current_user.id
       redirect_to user_path(current_user)
     else
       render :new
     end
  end

  private
  	def order_params
  	  params.require(:order).permit(:user_id, :created_at, :updated_at)
  	end


end
