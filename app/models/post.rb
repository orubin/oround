class Post < ActiveRecord::Base


  def get_posts_for_user(user_id, lat, lng)
    posts = Post.where()
    rendered_posts = []

    posts.each do |post|
      rendered_posts << post_decorator(post)
    end

    rendered_posts
  end

  def post_decorator(post)
    {

    }
  end

end
