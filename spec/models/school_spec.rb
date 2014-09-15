require "rails_helper"
require 'spec_helper'

RSpec.describe School, :type => :model do
  let(:school) {FactoryGirl.build(:school, :name => nil, :phone => nil, :address => nil, :description => nil, :status => nil)}
  it "should validate the school factories" do
    expect(FactoryGirl.build(:active_school).valid?).to be true
    expect(FactoryGirl.build(:inactive_school).valid?).to be true
  end
  it "should validate the school object for name, phone, address, description and status" do
    school.valid?
    expect(school.errors[:name].size).to be 1
    expect(school.errors[:phone].size).to be 1
    expect(school.errors[:address].size).to be 1
    expect(school.errors[:description].size).to be 1
    expect(school.errors[:status].size).to be 1
    school.name = "School"
    school.valid?
    expect(school.errors[:name].size).to be 0
    expect(school).to be_invalid
    school.phone = "111-222-3333"
    school.valid?
    expect(school.errors[:phone].size).to be 0
    expect(school).to be_invalid
    school.address = "#99, Street #123, Some Road, Some City"
    school.valid?
    expect(school.errors[:address].size).to be 0
    expect(school).to be_invalid
    school.description = " Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    school.valid?
    expect(school.errors[:description].size).to be 0
    expect(school).to be_invalid
    school.status = "active"
    school.valid?
    expect(school.errors[:status].size).to be 0
    expect(school).to be_valid
  end
  it "should validate the status aginst the possible values" do
    school = FactoryGirl.build(:school)
    school.status = "active"
    expect(school).to be_valid
    school.status = "inactive"
    expect(school).to be_valid
  end
  it "passes validation with a valid name, phone, address, description and status" do
    school=School.new
    school.name = "School"
    school.phone="111-222-3333"
    school.address = "#99, Street #123, Some Road, Some City"
    school.description = " Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    school.status = "active"
    expect(school.valid?).to be true
  end
end
