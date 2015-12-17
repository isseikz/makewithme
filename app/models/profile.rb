class Profile < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :favorite
  belongs_to :user
end
