class Group < ActiveRecord::Base
  attr_accessible :event_id, :name
  belongs_to :event
  has_many :tasks
end
