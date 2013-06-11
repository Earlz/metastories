class Tag < ActiveRecord::Base
  belongs_to :story
  attr_accessible :name
end
