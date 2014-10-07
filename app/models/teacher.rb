class Teacher < ActiveRecord::Base
  attr_accessible :name, :school_id
  belongs_to :school

  validates :name, :presence => true
  validates :school, :associated => true
  validates :school_id, :presence => true


end