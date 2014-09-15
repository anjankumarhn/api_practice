require "rails_helper"
require 'spec_helper'

RSpec.describe Teacher, :type => :model do
  before(:each) do
    FactoryGirl.create(:teacher).should be_valid
    @teacher = FactoryGirl.build(:teacher)
  end
  it "should pass a valid and presence of name and school_id" do
    @teacher.name = "name"
    @teacher.school_id="12345"
    expect(@teacher).to be_valid
  end
  it "should not pass a invalid name" do
    @teacher.name = "55456"
    @teacher.school_id="jhbh"
    expect(@teacher).not_to be_valid
  end
  it "should not be valid without name and school_id" do
    @teacher.name = nil
    @teacher.school_id = nil
    expect(@teacher).not_to be_valid
  end
end
