require 'rails_helper'

RSpec.describe "achievements/milestones/new", type: :view do
  before(:each) do
    assign(:achievements_milestone, Achievements::Milestone.new())
  end

  it "renders new achievements_milestone form" do
    render

    assert_select "form[action=?][method=?]", achievements_milestones_path, "post" do
    end
  end
end
