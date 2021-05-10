class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_account.posts.new(post_params)
    if @post.save
      redirect_to dashboard_path, flash: {success: "Post is created successfully"}
    else
      render :new, flash: {danger: "Post is not created"}
    end
  end

  private
  def post_params
    params.require(:post).permit(:image,:description)
  end
end
