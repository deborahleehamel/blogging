class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :author, presence: true


  def published
  end

  def unpublished
  end
end
