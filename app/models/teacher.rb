class Teacher < ActiveRecord::Base
  belongs_to :school

  validates :name, :presence => true,:format => /[a-zA-Z]/
  validates :school_id, :presence => true

end