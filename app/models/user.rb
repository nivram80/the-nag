class User < ActiveRecord::Base
  attr_accessible :email, :fname, :lname, :passsword_digest, :phone
end
