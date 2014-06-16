class CartsController < ApplicationController
	def show
    @cart = current_cart
  	end

  def remove_item
    @cart = current_cart
    @line_item = cart.line_items.find(params[:id])
    @line_item.destroy
    flash[:notice] = "Removed #{@item.name} from sample list."
    redirect_to current_cart
  end

end
