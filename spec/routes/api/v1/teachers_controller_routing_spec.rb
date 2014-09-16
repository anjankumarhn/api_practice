  require "rails_helper"
require "spec_helper"
describe Api::V1::SchoolsController, :type => :controller do
  describe "routing" do

    it "routes /api/v1/schools/:id/teachers to the api/v1/teachers controller and index action" do
      { :get => "/api/v1/schools/:id/teachers" }.should route_to(:controller => "api/v1/teachers", :action => "index", :id => ":id")
    end

  end
end