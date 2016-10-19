class ChallangesController < ::ApplicationController
  before_action :set_challange, only: %i(show edit update destroy)

  def index
    @challanges = Challange.all
  end

  def show
  end

  def create
    @challange = Challange.new(challange_params)
    @challange.user = current_user
    if @challange.save
      render :show, status: :created, location: @challange
    else
      render json: @challange.errors, status: :unprocessable_entity
    end
  end

  def update
    if @challange.update(challange_params)
      render :show, status: :ok, location: @challange
    else
      render json: @challange.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @challange.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_challange
    @challange = Challange.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def challange_params
    params.fetch(:challange, {})
  end
end
