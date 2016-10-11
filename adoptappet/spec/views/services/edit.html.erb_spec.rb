require 'rails_helper'

RSpec.describe "services/edit", type: :view do
  before(:each) do
    @service = assign(:service, Service.create!(
      :name => "MyString",
      :address => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :type => ""
    ))
  end

  it "renders the edit service form" do
    render

    assert_select "form[action=?][method=?]", service_path(@service), "post" do

      assert_select "input#service_name[name=?]", "service[name]"

      assert_select "input#service_address[name=?]", "service[address]"

      assert_select "input#service_phone[name=?]", "service[phone]"

      assert_select "input#service_email[name=?]", "service[email]"

      assert_select "input#service_type[name=?]", "service[type]"
    end
  end
end
