class Metrics::ActivitiesController < ApplicationController
  def index
    @metrics_activities = Metrics::Activity.where(user: current_user)
  end

  def show
    @metrics_activity = Metrics::Activity.find(params[:id])
  end

  def import
    ActivitiesImportService.new(current_user).call
    redirect_to metrics_activities_url, notice: 'Activities were successfully imported.'
  end
end
