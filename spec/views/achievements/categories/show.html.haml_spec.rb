require 'rails_helper'

RSpec.describe "achievements/categories/show", type: :view do
  before(:each) do
    @achievements_category = assign(:achievements_category, Achievements::Category.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
