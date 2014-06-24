class Post < ActiveRecord::Base
  attr_accessible :body, :excerpt, :title, :author_id

  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :categories, :class_name => 'Post::Category'

  validates :title, :body, :author, presence: true
  validates_associated :author

end
