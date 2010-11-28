require 'spec_helper'

describe "admin_settings/index.html.haml" do
  before(:each) do
    assign(:admin_settings, [
      stub_model(Admin::Setting,
        :name => "Name",
        :value => "Value"
      ),
      stub_model(Admin::Setting,
        :name => "Name",
        :value => "Value"
      )
    ])
  end

  it "renders a list of admin_settings" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Value".to_s, :count => 2
  end
end
