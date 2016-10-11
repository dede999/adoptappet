require 'rails_helper'

RSpec.describe "services/show", type: :view do
  before(:each) do
    @service = assign(:service, Service.create!(
      :name => "Name",
      :address => "Address",
      :phone => "Phone",
      :email => "Email",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Type/)
  end
end
