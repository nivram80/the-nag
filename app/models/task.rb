class Task < ActiveRecord::Base
  attr_accessible :desc, :done, :group_id
  
  belongs_to :group
end
