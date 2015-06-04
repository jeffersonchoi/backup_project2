class OrderlinesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user = User.find(current_user.id)
    @order = User.order.find(:id)
		@orderline = Orderline.new
	end

  def create
    @user = User.find(current_user.id)
    @order = User.order.find(:id)
    @orderline = Orderline.new(orderline_params)

   if @orderline.save
     redirect_to user_path(current_user)
   else
     render :new
   end
 end

 private
 	def orderline_params
 	  params.require(:orderline).permit(:quantity, :order_id, :item_id, :total_price, :created_at, :updated_at)
 	end


end
