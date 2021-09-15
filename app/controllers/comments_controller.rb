class CommentsController < ApplicationController
 def new
    @post = Post.find(params[:id])
  	@comment = Comment.new
  end

  def create
  	us = User.find(params[:comment][:user_id])
  	po = Photo.find(params[:comment][:post_id])
  	@comment = Comment.create(user:us, photo:po, comment:params[:comment][:comment])
  	# respond_to do |format|
   #    format.js
   #  end 
    redirect_to root_path
  end

  def show
  	# debugger
  	@post = Photo.find(params[:post_id])
  	@comments = @post.comments
  end
end
