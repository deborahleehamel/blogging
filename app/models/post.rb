class Post < ApplicationRecord
  acts_as_taggable_on :tag
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

  def self.sort_by_count
    where("published = true")
    .joins(:comments)
    .group("posts.id")
    .order("count(comments.id)")
  end
end
