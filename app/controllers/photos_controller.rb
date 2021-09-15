class PhotosController < ApplicationController
	def index
    @photos = Photos.all
  end

  def show
    @user = User.find(params[:id])
    @photo = @user.photos
  end

  def new
    @photo = current_user.photos.new
  end

  def edit
  end

  def create
    @photo = current_user.photos.create(photo_params)
    redirect_to root_path
  end

  def update
  	user = User.find(params[:photo][:user_id])
    @photo = user.update(photo_params)
  end

  def destroy
    @photo.destroy
  end

  private
    def photo_params
      params.require(:photo).permit(:user_id,:title, :body)
    end
end
