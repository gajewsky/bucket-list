require 'rails_helper'

RSpec.describe "achievements/categories/new", type: :view do
  before(:each) do
    assign(:achievements_category, Achievements::Category.new())
  end

  it "renders new achievements_category form" do
    render

    assert_select "form[action=?][method=?]", achievements_categories_path, "post" do
    end
  end
end
