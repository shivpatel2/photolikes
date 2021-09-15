class LikesController < ApplicationController
  def new 
  end

  def create
    @photo = Photo.find(params[:post_id])
    @like = @photo.likes.create(user_id:current_user.id)
  end

  def create_like_comment
    @comment = Comment.find(params[:comment_id])
    @like =@comment.likes.create(user_id:current_user.id)
  end

  def destroy
    @like = Like.find(params[:id])
    if @like.present?
      @like.destroy
    end
    @photo = Photo.find(params[:post_id])
  end

  def destroy_like_comment
    @like = Like.find(params[:id])
    @like.destroy
    @comment = Comment.find(params[:comment_id])
  end

end
