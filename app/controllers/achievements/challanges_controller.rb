module Achievements
  class ChallangesController < ApplicationController
    before_action :set_challange, only: [:show, :update, :destroy]

    # GET /challanges
    def index
      @challanges = Challange.all

      render json: @challanges
    end

    # GET /challanges/1
    def show
      render json: @challange
    end

    # POST /challanges
    def create
      @challange = Challange.new(challange_params)
      set_relationships

      if @challange.save
        render json: @challange, status: :created, location: challange_url(@challange)
      else
        render json: { errors: [@challange.errors] }, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /challanges/1
    def update
      if @challange.update(challange_params)
        set_relationships
        render json: @challange
      else
        render json: { errors: [@challange.errors] }, status: :unprocessable_entity
      end
    end

    # DELETE /challanges/1
    def destroy
      @challange.destroy
    end

    private

    def set_relationships
      @challange.milestones = relationship_params[:milestones] || []
      @challange.category = relationship_params[:category] if relationship_params[:category]
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_challange
      @challange = Challange.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def challange_params
      params.require(:data).require(:attributes).permit(:title, :description, :completed_at, :category_id)
    end
  end
end
