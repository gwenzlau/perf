class ItemsController < ApplicationController
	def index
		@items = Item.all
	end

	# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def item_params
  params.require(:item).permit(:image)
end
end
