class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.all
  end

  def show
    @blog_post = BlogPost.find(params[:id])
  # Redirects to the home page if the record isn't found
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end
end