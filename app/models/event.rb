class Event < ActiveRecord::Base
  attr_accessible :name, :user_id, :due
  has_many :groups
end
