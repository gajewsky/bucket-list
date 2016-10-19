class MilestonesController < ::ApplicationController
  before_action :set_milestone, except: :index

  def index
    @milestones = Milestone.all
  end

  def show
  end

  def create
    @milestone = Milestone.new(milestone_params)

    if @milestone.save
      render :show, status: :created, location: @milestone
    else
      render json: @milestone.errors, status: :unprocessable_entity
    end
  end

  def update
    if @milestone.update(milestone_params)
      render :show, status: :ok, location: @milestone
    else
      render json: @milestone.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @milestone.destroy
  end

  private
  
  # Use callbacks to share common setup or constraints between actions.
  def set_milestone
    @milestone = Milestone.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def milestone_params
    params.fetch(:milestone, {})
  end
end
