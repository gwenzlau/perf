class OrdersController < ApplicationController
	
	def create
		@order = Order.create(order_params)
		if @order.save
      redirect_to '/', notice: 'Order was successfully posted.'
    	else
      render action: 'new'
		end
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
