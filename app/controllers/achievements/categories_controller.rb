module Achievements
  class CategoriesController < ::ApplicationController
    before_filter :set_category, only: [:show, :update, :destroy]

    # GET /achievements/categories
    # GET /achievements/categories.json
    def index
      @categories = Achievements::Category.all
    end

    # GET /achievements/categories/1
    # GET /achievements/categories/1.json
    def show
    end

    # POST /achievements/categories
    # POST /achievements/categories.json
    def create
      @category = Achievements::Category.new(category_params)

      if @category.save
        render :show, status: :created, location: @category
      else
        render json: @category.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /achievements/categories/1
    # PATCH/PUT /achievements/categories/1.json
    def update
      if @category.update(category_params)
        render :show, status: :ok, location: @category
      else
        render json: @category.errors, status: :unprocessable_entity
      end
    end

    # DELETE /achievements/categories/1
    # DELETE /achievements/categories/1.json
    def destroy
      @category.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Achievements::Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.fetch(:category, {})
    end
  end
end
