module PostsHelper
  def author_name(post)
    "written by, #{post.user.name}" if user_signed_in?
  end
end
