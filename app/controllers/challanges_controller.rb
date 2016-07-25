class ChallangesController < ApplicationController
  before_action :set_challange, only: [:show, :update, :destroy]

  # GET /challanges
  def index
    @challanges = Achievements::Challange.all

    render json: @challanges
  end

  # GET /challanges/1
  def show
    render json: @challange
  end

  # POST /challanges
  def create
    @challange = Achievements::Challange.new(challange_params)

    if @challange.save
      render json: @challange, status: :created, location: challange_url(@challange)
    else
      render json: { errors: [@challange.errors] }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /challanges/1
  def update
    if @challange.update(challange_params)
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

  # Use callbacks to share common setup or constraints between actions.
  def set_challange
    @challange = Achievements::Challange.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def challange_params
    params.require(:challange).permit(:title, :description, :completed_at, :category_id)
  end
end
