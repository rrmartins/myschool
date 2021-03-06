require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        :name => "Name",
        :register_number => "Register Number",
        :status => false
      ),
      Student.create!(
        :name => "Name",
        :register_number => "Register Number",
        :status => false
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Register Number".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
