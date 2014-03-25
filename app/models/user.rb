class User < ActiveRecord::Base
  has_secure_password
  # Assumptions:
  # - "password_digest" is a column
  # - User is asked for a 'password'
  # - Encrypts the password and then stores in the password_digest column
  # - Ensures that 'password_confirmation' field matches 'password'.
  # - 'bcrypt' has been activated in Gemfile
  
  # :password_digest removed from attr_accessible for security
  attr_accessible :fname, :lname, :email, :phone, 
                  :password, :password_confirmation
  
  validates :fname, :presence => true
  validates :lname, :presence => true
  validates :email, :presence => true, :uniqueness => true
  # has_secure_password validates that 'password' matches 'password_confirmation'
end
