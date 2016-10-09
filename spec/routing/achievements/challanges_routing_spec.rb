require "rails_helper"

RSpec.describe Achievements::ChallangesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/achievements/challanges").to route_to("achievements/challanges#index")
    end

    it "routes to #new" do
      expect(:get => "/achievements/challanges/new").to route_to("achievements/challanges#new")
    end

    it "routes to #show" do
      expect(:get => "/achievements/challanges/1").to route_to("achievements/challanges#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/achievements/challanges/1/edit").to route_to("achievements/challanges#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/achievements/challanges").to route_to("achievements/challanges#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/achievements/challanges/1").to route_to("achievements/challanges#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/achievements/challanges/1").to route_to("achievements/challanges#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/achievements/challanges/1").to route_to("achievements/challanges#destroy", :id => "1")
    end

  end
end
