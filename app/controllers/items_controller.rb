class ItemsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :destroy]

	def index
    @items = Item.all
    @cart = current_cart
  end
  
  def show
    @item = Item.find(params[:id])
  end
  
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:notice] = "Successfully created item."
      redirect_to @item
    else
      render :action => 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def destroy
    @item.destroy
    redirect_to items_url, notice: "Item destroyed."
  end
	# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.
private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

def item_params
  params.require(:item).permit(:image, :name)
end
end
