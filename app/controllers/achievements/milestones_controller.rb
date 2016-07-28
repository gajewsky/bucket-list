module Achievements
  class MilestonesController < AchievementsController
    before_action :set_milestone, only: [:show, :update, :destroy]

    # GET /milestones
    def index
      @milestones = Milestone.all

      render json: @milestones
    end

    # GET /milestones/1
    def show
      render json: @milestone
    end

    # POST /milestones
    def create
      @milestone = Milestone.new(milestone_params)
      set_relationships

      if @milestone.save
        render json: @milestone, status: :created, location: milestone_url(@milestone)
      else
        render json: { errors: [@milestone.errors] }, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /milestones/1
    def update
      if @milestone.update(milestone_params)
        set_relationships
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

    def set_relationships
      @milestone.challange = relationship_params[:challange] if relationship_params[:challange]
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_milestone
      @milestone = Milestone.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def milestone_params
      params.require(:data).require(:attributes).permit(:title, :description, :completed_at, :challange_id)
    end
  end
end
