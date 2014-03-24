class Task < ActiveRecord::Base
  attr_accessible :desc, :done, :group_id
end
