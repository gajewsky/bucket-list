class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update, :destroy]

  # GET /categories
  def index
    @categories = Achievements::Category.all

    render json: @categories
  end

  # GET /categories/1
  def show
    render json: @category
  end

  # POST /categories
  def create
    @category = Achievements::Category.new(category_params)

    if @category.save
      render json: @category, status: :created, location: category_url(@category)
    else
      render json: { errors: [@category.errors] }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories/1
  def update
    if @category.update(category_params)
      render json: @category
    else
      render json: { errors: [@category.errors] }, status: :unprocessable_entity
    end
  end

  # DELETE /categories/1
  def destroy
    @category.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = Achievements::Category.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def category_params
    params.require(:category).permit(:title, :description)
  end
end