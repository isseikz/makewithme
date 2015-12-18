class Idea < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :title
end
