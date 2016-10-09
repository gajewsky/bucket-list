require 'rails_helper'

RSpec.describe "achievements/milestones/edit", type: :view do
  before(:each) do
    @achievements_milestone = assign(:achievements_milestone, Achievements::Milestone.create!())
  end

  it "renders the edit achievements_milestone form" do
    render

    assert_select "form[action=?][method=?]", achievements_milestone_path(@achievements_milestone), "post" do
    end
  end
end
