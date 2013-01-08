class CommentsController < ApplicationController
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
end
