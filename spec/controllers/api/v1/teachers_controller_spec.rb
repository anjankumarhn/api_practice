require "rails_helper"
require 'spec_helper'
describe Api::V1::TeachersController, :type => :controller do
  describe "GET #teachers" do
    it "should return a list of teachers in a school" do
      3.times do
        FactoryGirl.create(:teacher)
      end
      current_page = 1
      per_page = 10
get :index #, page: current_page, per_page: per_page
teachers = Teacher.where("school_id = 12345").order("name asc").page(current_page).per(per_page).all
expect(assigns[:data]).to eq(teachers)
end
end
end