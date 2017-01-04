class Comment < ActiveRecord::Base
  belongs_to :post
  
  def test(post_id)
    Comment.where(post_id: post_id).update_all(post_id: nil)
    self.update(post_id: post_id)
  end
end
