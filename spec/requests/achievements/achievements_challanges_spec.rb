require 'rails_helper'

RSpec.describe "Achievements::Challanges", type: :request do
  describe "GET /achievements_challanges" do
    it "works! (now write some real specs)" do
      get achievements_challanges_path
      expect(response).to have_http_status(200)
    end
  end
end
