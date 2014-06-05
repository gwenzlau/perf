class LineItemsController < ApplicationController
	def create
    @item = Item.find(params[:item_id])
    @line_item = LineItem.create!(:cart => current_cart, :item => @item, :quantity => 1)
    flash[:notice] = "Added #{@item.name} to cart."
    redirect_to current_cart
  end

end
