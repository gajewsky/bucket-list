require "rails_helper"

RSpec.describe Achievements::MilestonesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/achievements/milestones").to route_to("achievements/milestones#index")
    end

    it "routes to #new" do
      expect(:get => "/achievements/milestones/new").to route_to("achievements/milestones#new")
    end

    it "routes to #show" do
      expect(:get => "/achievements/milestones/1").to route_to("achievements/milestones#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/achievements/milestones/1/edit").to route_to("achievements/milestones#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/achievements/milestones").to route_to("achievements/milestones#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/achievements/milestones/1").to route_to("achievements/milestones#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/achievements/milestones/1").to route_to("achievements/milestones#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/achievements/milestones/1").to route_to("achievements/milestones#destroy", :id => "1")
    end

  end
end
