require 'spec_helper'

describe "admin_settings/show.html.haml" do
  before(:each) do
    @setting = assign(:setting, stub_model(Admin::Setting,
      :name => "Name",
      :value => "Value"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Value/)
  end
end
