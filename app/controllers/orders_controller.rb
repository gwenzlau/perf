class OrdersController < ApplicationController
	
	def create
		@order = Order.create(order_params)
      	if @order.save
       	 format.html { redirect_to '/', notice: 'Order was successfully sent!' }
       	 format.json { render json: @order, status: :created, location: @order }
      	else
       	 redirect_to '/', notice: 'Please check the fields and try again'
      	end
	end

	def new
		@order = Order.create
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
