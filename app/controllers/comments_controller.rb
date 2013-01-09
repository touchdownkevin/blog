class CommentsController < ApplicationController
  before_filter :authenticate_admin!, :except => [:create]
  def create
    @post=Post.find(params[:post_id])
    @comment=@post.comments.create!(params[:comment])
    redirect_to @post
  end

  def index
  	@post=Post.find(params[:post_id])
  	@comments=@post.comments.all
  	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  def destroy
    @post=Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_comments_url
  end

end
