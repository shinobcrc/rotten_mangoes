class AddImageToReviewsController < ApplicationController
  before_action :set_add_image_to_review, only: [:show, :edit, :update, :destroy]

  # GET /add_image_to_reviews
  # GET /add_image_to_reviews.json
  def index
    @add_image_to_reviews = AddImageToReview.all
  end

  # GET /add_image_to_reviews/1
  # GET /add_image_to_reviews/1.json
  def show
  end

  # GET /add_image_to_reviews/new
  def new
    @add_image_to_review = AddImageToReview.new
  end

  # GET /add_image_to_reviews/1/edit
  def edit
  end

  # POST /add_image_to_reviews
  # POST /add_image_to_reviews.json
  def create
    @add_image_to_review = AddImageToReview.new(add_image_to_review_params)

    respond_to do |format|
      if @add_image_to_review.save
        format.html { redirect_to @add_image_to_review, notice: 'Add image to review was successfully created.' }
        format.json { render :show, status: :created, location: @add_image_to_review }
      else
        format.html { render :new }
        format.json { render json: @add_image_to_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_image_to_reviews/1
  # PATCH/PUT /add_image_to_reviews/1.json
  def update
    respond_to do |format|
      if @add_image_to_review.update(add_image_to_review_params)
        format.html { redirect_to @add_image_to_review, notice: 'Add image to review was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_image_to_review }
      else
        format.html { render :edit }
        format.json { render json: @add_image_to_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_image_to_reviews/1
  # DELETE /add_image_to_reviews/1.json
  def destroy
    @add_image_to_review.destroy
    respond_to do |format|
      format.html { redirect_to add_image_to_reviews_url, notice: 'Add image to review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_image_to_review
      @add_image_to_review = AddImageToReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_image_to_review_params
      params.require(:add_image_to_review).permit(:name, :description, :image)
    end
end
