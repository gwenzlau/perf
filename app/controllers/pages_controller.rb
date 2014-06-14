class PagesController < ApplicationController
  def home
  	@order = Order.new
  	@item = Item
  	@items = Item.all
  end

  def thanks
  end
end
