require 'rails_helper'

RSpec.describe "achievements/challanges/edit", type: :view do
  before(:each) do
    @achievements_challange = assign(:achievements_challange, Achievements::Challange.create!())
  end

  it "renders the edit achievements_challange form" do
    render

    assert_select "form[action=?][method=?]", achievements_challange_path(@achievements_challange), "post" do
    end
  end
end
