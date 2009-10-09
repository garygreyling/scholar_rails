class Student < ActiveRecord::Base
  default_scope :order => :first_name
end
