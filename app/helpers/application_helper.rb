module ApplicationHelper

  def published(posts, boolean)
    published_posts = []
    posts.each do |post|
      if post.published? == boolean
        published_posts << post
      end
    end
    published_posts
  end
end
