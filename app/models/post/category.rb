class Post::Category < ActiveRecord::Base
  RAILS      = 1
  RUBY       = 2
  JAVASCRIPT = 3
  HTML       = 4
  CSS        = 5

  attr_accessible :name
  has_and_belongs_to_many :posts

  def name
    read_attribute(:name).upcase
  end

  def name=(value)
    write_attribute(:name, value.upcase)
  end
end
