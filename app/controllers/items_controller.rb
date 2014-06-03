class ItemsController < ApplicationController
	def index
		@items = Item.all.order("created_at DESC")
	end

	def create
		@item = Item.create(item_params)
		if @item.save
      redirect_to @item, notice: 'Item was successfully created.'
    else
      render action: 'new'
    end
	end

	def new
		@item = Item.new
	end

	def show
		@item = Item.find(params[:id])
	end
	# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.
private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

def item_params
  params.require(:item).permit(:image)
end
end
