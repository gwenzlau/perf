class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:new, :create, :edit, :destroy]

	def index
    if params[:tag]
     @items = Item.tagged_with(params[:tag])    
    else
      @items = Item.all
    end
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
    redirect_to items_url
  end
	# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.
private
    # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:image, :name, :tag_list)
  end
end
