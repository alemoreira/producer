class Post < ActiveRecord::Base
  attr_accessible :body, :excerpt, :title

  has_many :comments, dependent: :destroy

  validates :title, :body, presence: true

end
