class School < ActiveRecord::Base
  has_many :teachers

  validates :name, presence: true
  validates :phone, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :status, presence: true
end