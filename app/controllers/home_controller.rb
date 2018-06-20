class HomeController < ApplicationController

  # landing method
	def index
    @photo = Photo.new
    @photos = Photo.all
  end

  # upload phot from here
  def upload_photo
    photo = Photo.new(photo_params)
    if photo.save
      flash[:success] = "Photo upload successfully."
    else
      flash[:danger] = "Something went wrong"
    end
    redirect_to root_path
  end

  private

  def photo_params
    params.require(:photo).permit(:avatar)
  end
end
