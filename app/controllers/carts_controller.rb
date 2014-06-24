class CartsController < ApplicationController
	def show
    @cart = current_cart
  	end

   def remove_item
      current_cart.line_items.delete params[:id]
   end

end
