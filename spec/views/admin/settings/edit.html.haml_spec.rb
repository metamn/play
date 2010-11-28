require 'spec_helper'

describe "admin_settings/edit.html.haml" do
  before(:each) do
    @setting = assign(:setting, stub_model(Admin::Setting,
      :new_record? => false,
      :name => "MyString",
      :value => "MyString"
    ))
  end

  it "renders the edit setting form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => setting_path(@setting), :method => "post" do
      assert_select "input#setting_name", :name => "setting[name]"
      assert_select "input#setting_value", :name => "setting[value]"
    end
  end
end
