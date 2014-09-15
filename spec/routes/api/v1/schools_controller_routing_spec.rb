require "rails_helper"
require "spec_helper"
describe Api::V1::SchoolsController, :type => :controller do
  describe "routing" do

    it "routes /api/v1/schools to the api/v1/schools controller and index action" do
      { :get => "/api/v1/schools" }.should route_to(:controller => "api/v1/schools", :action => "index")
    end

    it "routes /api/v1/schools/:id to the api/v1/schools controller and show action" do
      { :get => "/api/v1/schools/:id" }.should route_to(:controller => "api/v1/schools", :action => "show", :id => ":id")
    end

  end
end