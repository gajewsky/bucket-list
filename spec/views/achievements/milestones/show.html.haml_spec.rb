require 'rails_helper'

RSpec.describe "achievements/milestones/show", type: :view do
  before(:each) do
    @achievements_milestone = assign(:achievements_milestone, Achievements::Milestone.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
