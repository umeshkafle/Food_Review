class ReviewsController < ApplicationController
  def index
    @item = Item.find(params[:item_id])
    @reviews = @item.reviews
  end

  def show
  end

  def new
    @item = Item.find(params[:item_id])
    @review = @item.reviews.new
  end

  def create
    @item = Item.find(params[:item_id])
    @review = @item.reviews.new(reviews_params)
    if @item.save
      redirect_to item_review(item_id)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  private
  def reviews_params
    params.require(:review).permit(:rating, :comment)
  end
end
