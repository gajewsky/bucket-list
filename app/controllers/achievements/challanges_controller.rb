class Achievements::ChallangesController < ApplicationController
  before_action :set_challange, only: [:show, :update, :destroy]

  # GET /achievements/challanges
  # GET /achievements/challanges.json
  def index
    @challanges = Achievements::Challange.all
  end

  # GET /achievements/challanges/1
  # GET /achievements/challanges/1.json
  def show
  end

  # POST /achievements/challanges
  # POST /achievements/challanges.json
  def create
    @challange = Achievements::Challange.new(challange_params)

    if @challange.save
      render :show, status: :created, location: @challange
    else
      render json: @challange.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /achievements/challanges/1
  # PATCH/PUT /achievements/challanges/1.json
  def update
    if @challange.update(challange_params)
      render :show, status: :ok, location: @challange
    else
      render json: @challange.errors, status: :unprocessable_entity
    end
  end

  # DELETE /achievements/challanges/1
  # DELETE /achievements/challanges/1.json
  def destroy
    @challange.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challange
      @challange = Achievements::Challange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def challange_params
      params.fetch(:challange, {})
    end
end
