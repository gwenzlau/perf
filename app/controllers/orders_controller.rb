class OrdersController < ApplicationController
	
	def index
	end

	def create
		@order = Order.create(order_params)
      	if @order.save
      		redirect_to @order, :notice => 'Order created!'
      	else
      	 	redirect_to root_path, :notice => 'Order not created'
    	end
	end

	def new
	end

	def add_item_to_order
		@additem = @item.save
	end


	private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

	def order_params
 	 params.require(:order).permit(:name, :address, :email, :item)
	end
end
