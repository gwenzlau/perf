class OrdersController < ApplicationController
	
	 def new
    @order = Order.new
    @cart = current_cart
  	end
  
  def create
    @order = current_cart.build_order(params[order_params])
    @order.ip_address = request.remote_ip
    if @order.save
      if @order.save
        redirect_to thanks_path
      else
        render :action => "failure"
      end
    else
      render :action => 'new'
    end
    #email
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
