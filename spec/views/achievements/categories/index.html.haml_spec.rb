require 'rails_helper'

RSpec.describe "achievements/categories/index", type: :view do
  before(:each) do
    assign(:achievements_categories, [
      Achievements::Category.create!(),
      Achievements::Category.create!()
    ])
  end

  it "renders a list of achievements/categories" do
    render
  end
end
