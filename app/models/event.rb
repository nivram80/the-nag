class Event < ActiveRecord::Base
  attr_accessible :name, :user_id, :due
  has_many :groups
  validates :due, date: { after: Proc.new { Time.now }, message: 'must be after today' }, on: :create
end
