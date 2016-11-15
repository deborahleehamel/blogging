class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :author, presence: true


  def publish
    update_attribute(:published, true)
  end

  def unpublish
    update_attribute(:published, false)
  end
end
