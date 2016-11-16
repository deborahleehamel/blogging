class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true
  validates :author, presence: true


  def publish
    update_attribute(:published, true)
  end

  def unpublish
    update_attribute(:published, false)
  end

  def self.sort_by_title
    where("published = true")
    .order("title")
  end
end
