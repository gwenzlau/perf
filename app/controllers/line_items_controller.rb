class LineItemsController < ApplicationController

	def create
    @item = Item.find(params[:item_id])
    @line_item = LineItem.create!(:cart => current_cart, :item => @item, :quantity => 1)
    flash[:notice] = "Added #{@item.name} to sample."
    redirect_to current_cart
  end

  def destroy
    @item = Item.find(params[:id])
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
  	flash[:notice] = "Removed #{@item.name} from sample list."
    redirect_to current_cart
	end

end
