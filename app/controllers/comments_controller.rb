class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comments = @post.comments

    if @comment.save
      flash[:notice] = 'Comment has been added'
      redirect_to @post
    else
      render 'posts/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
