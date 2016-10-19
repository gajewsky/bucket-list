class Metrics::BeersController < ApplicationController
  def index
    @metrics_beers = Metrics::Beer.all
  end

  def show
    @metrics_beer = Metrics::Beer.find(params[:id])
  end

  def import
    BeersImportService.new(current_user).call
    redirect_to metrics_beers_url, notice: 'Beers were successfully imported.'
  end
end
