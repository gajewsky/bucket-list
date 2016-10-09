require 'rails_helper'

RSpec.describe "achievements/categories/edit", type: :view do
  before(:each) do
    @achievements_category = assign(:achievements_category, Achievements::Category.create!())
  end

  it "renders the edit achievements_category form" do
    render

    assert_select "form[action=?][method=?]", achievements_category_path(@achievements_category), "post" do
    end
  end
end
