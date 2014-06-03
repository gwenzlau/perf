class PagesController < ApplicationController
  def home
  	@order = Order.new
  	@items = Item.all
  end
end
