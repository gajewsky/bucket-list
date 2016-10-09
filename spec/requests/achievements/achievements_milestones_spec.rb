require 'rails_helper'

RSpec.describe "Achievements::Milestones", type: :request do
  describe "GET /achievements_milestones" do
    it "works! (now write some real specs)" do
      get achievements_milestones_path
      expect(response).to have_http_status(200)
    end
  end
end
