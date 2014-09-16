require "rails_helper"
require 'spec_helper'

RSpec.describe SchoolsController do

  describe "#create" do
    subject { post :create, :school => { :name => "School", :phone => "123-444-5555", :address =>"fghggg", :description =>"hhjhjhjhhj", :status => "active" } }

    it "redirects to school_url(@school)" do
      expect(subject).to redirect_to(root_url(assigns(:school)))
    end
  end

  describe "GET #new" do
    subject { get :new }

    it "renders the new template" do
      expect(subject).to render_template("schools/new")
    end
  end

end