class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :content))

    if @post.save
      flash[:notice] = 'Post has been created'
      redirect_to @post
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments
  end
end
