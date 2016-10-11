require 'rails_helper'

RSpec.describe "services/index", type: :view do
  before(:each) do
    assign(:services, [
      Service.create!(
        :name => "Name",
        :address => "Address",
        :phone => "Phone",
        :email => "Email",
        :type => "Type"
      ),
      Service.create!(
        :name => "Name",
        :address => "Address",
        :phone => "Phone",
        :email => "Email",
        :type => "Type"
      )
    ])
  end

  it "renders a list of services" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
