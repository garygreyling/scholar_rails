class Upload < ActiveRecord::Base
  belongs_to :account
  has_attached_file :document
end
