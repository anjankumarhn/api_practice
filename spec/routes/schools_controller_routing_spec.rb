require "rails_helper"
require "spec_helper"
RSpec.describe SchoolsController, :type => :controller do
  describe "routing" do

    it "routes /schools/new to the schools controller and new action" do
      { :get => "/schools/new" }.should route_to(:controller => "schools", :action => "new")
    end

    it "routes /schools to the schools controller and create action" do
      { :post => "/schools" }.should route_to(:controller => "schools", :action => "create")
    end

  end
end
