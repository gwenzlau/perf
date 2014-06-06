class ItemsController < ApplicationController
	def index
    @items = Item.all
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
