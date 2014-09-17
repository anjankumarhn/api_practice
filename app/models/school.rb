class School < ActiveRecord::Base
  has_many :teachers

  validates :name, presence: true
  validates :status, presence: true
end