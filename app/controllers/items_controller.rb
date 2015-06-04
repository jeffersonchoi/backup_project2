class ItemsController < ApplicationController

	def item_list
		@item = Item.all
	end

	def index
    @user = User.find(params[:user_id])
		@item = @user.items.all
	end

	def show
    @user = User.find(params[:user_id])
    @item = @user.items.find(params[:id])
	end

  def current_user_items
    @user = User.find(current_user.id)
    @item = @user.items.all
  end

  def current_user_item
    @user = User.find(current_user.id)
    @item = Item.find(params[:id])
    # @item.user_id = current_user.id
  end

	def new
		@user = User.find(current_user.id)
		@item = Item.new
	end

	def create
		 @user = User.find(current_user.id)
		 @item = Item.new(item_params)
		 @item.user_id = current_user.id

		 # @items = @user.items.create(item_params)

		if @item.save
		  redirect_to user_items_path
		else
		  render :new
		end
	end


	def edit
		@user = User.find(current_user.id)
		@item = Item.find(params[:id])
		# @item.user_id = current_user.id
	end

	def update
		@user = User.find(current_user.id)
		@item = Item.find(params[:id])
		# @item.user_id = current_user.id

		if @item.update_attributes(item_params)
			redirect_to user_item_path
		else
			render :edit
		end
	end

	def destroy
    @user = User.find(current_user.id)
		@item = Item.find(params[:id])
		@item.destroy
		redirect_to user_items_path
	end

private
	def item_params
	  params.require(:item).permit(:item_name, :user_id, :orderline_id, :stock_quantity, :marked_price, :created_at, :updated_at)
	end




end
