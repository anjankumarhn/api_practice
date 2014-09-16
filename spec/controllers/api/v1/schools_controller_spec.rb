require "rails_helper"
require 'spec_helper'
describe Api::V1::SchoolsController, :type => :controller do
  describe "GET #schools" do
    it "should return a list of active schools" do
      3.times do
        FactoryGirl.create(:active_school)
      end
      2.times do
        FactoryGirl.create(:inactive_school)
      end
      current_page = 1
      per_page = 10
get :index #, page: current_page, per_page: per_page
schools = School.where("status = 'active'").order("name asc").page(current_page).per(per_page).all
expect(assigns[:data]).to eq(schools)
end
end
end