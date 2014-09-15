require "rails_helper"
require "spec_helper"
RSpec.describe TeachersController, :type => :controller do
  describe "routing" do

    it "routes /teachers/new to the teachers controller and new action" do
      { :get => "/teachers/new" }.should route_to(:controller => "teachers", :action => "new")
    end

    it "routes /teachers to the teachers controller and create action" do
      { :post => "/teachers" }.should route_to(:controller => "teachers", :action => "create")
    end

  end
end
