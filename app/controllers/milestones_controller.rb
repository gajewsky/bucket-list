class MilestonesController < ApplicationController
  before_action :set_milestone, only: [:show, :update, :destroy]

  # GET /milestones
  def index
    @milestones = Achievements::Milestone.all

    render json: @milestones
  end

  # GET /milestones/1
  def show
    render json: @milestone
  end

  # POST /milestones
  def create
    @milestone = Achievements::Milestone.new(milestone_params)

    if @milestone.save
      render json: @milestone, status: :created, location: milestone_url(@milestone)
    else
      render json: { errors: [@milestone.errors] }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /milestones/1
  def update
    if @milestone.update(milestone_params)
      render json: @milestone
    else
      render json: { errors: [@milestone.errors] }, status: :unprocessable_entity
    end
  end

  # DELETE /milestones/1
  def destroy
    @milestone.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_milestone
      @milestone = Achievements::Milestone.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def milestone_params
      params.require(:milestone).permit(:title, :description, :completed_at, :challange_id)
    end
end
