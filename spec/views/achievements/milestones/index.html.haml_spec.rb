require 'rails_helper'

RSpec.describe "achievements/milestones/index", type: :view do
  before(:each) do
    assign(:achievements_milestones, [
      Achievements::Milestone.create!(),
      Achievements::Milestone.create!()
    ])
  end

  it "renders a list of achievements/milestones" do
    render
  end
end
