require 'rails_helper'

RSpec.describe "achievements/challanges/show", type: :view do
  before(:each) do
    @achievements_challange = assign(:achievements_challange, Achievements::Challange.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
