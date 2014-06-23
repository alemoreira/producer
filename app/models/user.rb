class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name

  has_many :posts

  validates :email, :first_name, :last_name, presence: true
  validates :email, uniqueness: true
  validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: 'Not a valid format.'}

  def full_name
    "#{self.first_name} #{self.last_name}".titleize
  end
end
