class Student < ActiveRecord::Base
  default_scope :order => :first_name
  validates_numericality_of :first_name
end
