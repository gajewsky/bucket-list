require 'rails_helper'

RSpec.describe "achievements/challanges/index", type: :view do
  before(:each) do
    assign(:achievements_challanges, [
      Achievements::Challange.create!(),
      Achievements::Challange.create!()
    ])
  end

  it "renders a list of achievements/challanges" do
    render
  end
end
