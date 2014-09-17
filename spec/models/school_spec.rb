require "rails_helper"
require 'spec_helper'

RSpec.describe School, :type => :model do

  let(:school) {FactoryGirl.build(:school)}



  context "Factory settings for school" do
    it "should validate the school factories" do
      expect(FactoryGirl.build(:active_school).valid?).to be true
      expect(FactoryGirl.build(:inactive_school).valid?).to be true
      expect(FactoryGirl.build(:invalid_school).invalid?).to be true
    end
  end

  describe "name" do
    it "should require the school name before create" do
      school.name =""
      school.valid?
      expect(school).to be_invalid
      expect(school.errors[:name].size).to be 1

      school.name = nil
      school.valid?
      expect(school).to be_invalid
      expect(school.errors[:name].size).to be 1
    end

    it "should accept valid school name on create" do
      school.name = "School"
      school.valid?
      expect(school).to be_valid
      expect(school.errors[:name].size).to be 0
    end
  end

  describe "status" do
    it "should require the school status before create" do
      school.status =""
      school.valid?
      expect(school).to be_invalid
      expect(school.errors[:status].size).to be 1

      school.status = nil
      school.valid?
      expect(school).to be_invalid
      expect(school.errors[:status].size).to be 1
    end

    it "should accept valid school status on create" do
      school.name = "active"
      school.valid?
      expect(school).to be_valid
      expect(school.errors[:status].size).to be 0
    end
  end
end