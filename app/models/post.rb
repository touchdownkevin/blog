class Post < ActiveRecord::Base
  attr_accessible :body, :date, :title
  has_many :comments
end
