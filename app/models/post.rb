class Post < ActiveRecord::Base
  has_many :comments
  
  def test
    Comment.all.sample.test
  end
end
