require "rails_helper"
require 'spec_helper'

RSpec.describe Teacher, :type => :model do

  let(:teacher) {FactoryGirl.build(:teacher)}

  context "Factory teacher" do
    it "should validate the school factories" do
      expect(FactoryGirl.build(:teacher).valid?).to be true
    end
  end

  describe "name" do
    it "should require the teacher name before create" do
      teacher.name =""
      teacher.valid?
      expect(teacher).to be_invalid
      expect(teacher.errors[:name].size).to be 1

      teacher.name = nil
      teacher.valid?
      expect(teacher).to be_invalid
      expect(teacher.errors[:name].size).to be 1
  end

   it "should accept valid school name on create" do
      teacher.name = "name"
      teacher.valid?
      expect(teacher).to be_valid
      expect(teacher.errors[:name].size).to be 0
    end
  end

  describe "school_id" do
    it "should require the school id before create" do
      teacher.school_id =""
      teacher.valid?
      expect(teacher).to be_invalid
      expect(teacher.errors[:school_id].size).to be 1

      teacher.school_id = nil
      teacher.valid?
      expect(teacher).to be_invalid
      expect(teacher.errors[:school_id].size).to be 1
    end

    it "should accept valid school id on create" do
      teacher.school_id = "12345"
      teacher.valid?
      expect(teacher).to be_valid
      expect(teacher.errors[:school_id].size).to be 0
    end
  end

end
