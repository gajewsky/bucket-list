require 'rails_helper'

RSpec.describe "achievements/challanges/new", type: :view do
  before(:each) do
    assign(:achievements_challange, Achievements::Challange.new())
  end

  it "renders new achievements_challange form" do
    render

    assert_select "form[action=?][method=?]", achievements_challanges_path, "post" do
    end
  end
end
