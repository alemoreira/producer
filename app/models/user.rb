class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name

  validates :email, :first_name, :last_name, presence: true
  validates :email, uniqueness: true
  validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: 'Not a valid format.'}
end
