class ItemsController < ApplicationController
  before_action :authenticate_user!
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
      redirect_to @item
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy 
      redirect_to items_path
    end
  end
  private
  def item_params
    params.require(:item).permit(:title, :Cuisine, :description, :price, :avatar)
  end
end
