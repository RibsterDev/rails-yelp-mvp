class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_restaurant, only: [:create]

  def index
    @reviews = Review.all
  end

  def show
  end

  # GET /restaurants/:restaurant_id/reviews/new
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def edit
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@review), notice: 'Review was successfully created.'
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_review
    @review = Review.find(params[:id])
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
  def review_params
    params.require(:review).permit(:content, :rating, :restaurant)
  end
end
