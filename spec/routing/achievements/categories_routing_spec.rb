require "rails_helper"

RSpec.describe Achievements::CategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/achievements/categories").to route_to("achievements/categories#index")
    end

    it "routes to #new" do
      expect(:get => "/achievements/categories/new").to route_to("achievements/categories#new")
    end

    it "routes to #show" do
      expect(:get => "/achievements/categories/1").to route_to("achievements/categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/achievements/categories/1/edit").to route_to("achievements/categories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/achievements/categories").to route_to("achievements/categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/achievements/categories/1").to route_to("achievements/categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/achievements/categories/1").to route_to("achievements/categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/achievements/categories/1").to route_to("achievements/categories#destroy", :id => "1")
    end

  end
end
