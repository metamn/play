require "spec_helper"

describe Admin::SettingsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/admin_settings" }.should route_to(:controller => "admin_settings", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/admin_settings/new" }.should route_to(:controller => "admin_settings", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/admin_settings/1" }.should route_to(:controller => "admin_settings", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/admin_settings/1/edit" }.should route_to(:controller => "admin_settings", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/admin_settings" }.should route_to(:controller => "admin_settings", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/admin_settings/1" }.should route_to(:controller => "admin_settings", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/admin_settings/1" }.should route_to(:controller => "admin_settings", :action => "destroy", :id => "1")
    end

  end
end
