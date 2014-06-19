class Post < ActiveRecord::Base
  attr_accessible :body, :excerpt, :title

  validates :title, :body, presence: true

end
