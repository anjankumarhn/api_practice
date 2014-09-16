require "rails_helper"
require 'spec_helper'

RSpec.describe TeachersController do

  describe "#create" do
    subject { post :create, :teacher => { :name => "name", :school_id =>"12345" } }

    it "redirects to teacher_url(@teacher)" do
      expect(subject).to redirect_to(root_url(assigns(:teacher)))
    end
  end

  describe "GET #new" do
    subject { get :new }

    it "renders the new template" do
      expect(subject).to render_template("teachers/new")
    end
  end

end