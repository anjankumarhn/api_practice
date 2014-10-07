class School < ActiveRecord::Base
  attr_accessible :name, :status, :phone, :address, :description
  has_many :teachers

  validates :name, presence: true
  validates :status, presence: true
end