require 'rails_helper'

RSpec.describe "Achievements::Categories", type: :request do
  describe "GET /achievements_categories" do
    it "works! (now write some real specs)" do
      get achievements_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
