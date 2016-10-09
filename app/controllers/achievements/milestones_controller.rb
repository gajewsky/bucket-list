class Achievements::MilestonesController < ApplicationController
  before_action :set_milestone, only: [:show, :update, :destroy]

  # GET /achievements/milestones
  # GET /achievements/milestones.json
  def index
    @milestones = Achievements::Milestone.all
  end

  # GET /achievements/milestones/1
  # GET /achievements/milestones/1.json
  def show
  end

  # POST /achievements/milestones
  # POST /achievements/milestones.json
  def create
    @milestone = Achievements::Milestone.new(milestone_params)

    if @milestone.save
      render :show, status: :created, location: @milestone
    else
      render json: @milestone.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /achievements/milestones/1
  # PATCH/PUT /achievements/milestones/1.json
  def update
    if @milestone.update(milestone_params)
      render :show, status: :ok, location: @milestone
    else
      render json: @milestone.errors, status: :unprocessable_entity
    end
  end

  # DELETE /achievements/milestones/1
  # DELETE /achievements/milestones/1.json
  def destroy
    @milestone.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_milestone
      @milestone = Achievements::Milestone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def milestone_params
      params.fetch(:milestone, {})
    end
end
