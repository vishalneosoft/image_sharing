class PhotosController < ApplicationController
  before_action :authenticate_user!, except: :index
  # GET /photos
  # GET /photos.json
  def index
    @photos = Photo.paginate(:page => params[:page], :per_page => 6)
  end

  # GET /photos/new
  def new
    @photo = Photo.new
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(photo_params)

    respond_to do |format|
      if @photo.save
        format.html { redirect_to photos_path, notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @photo }
      else
        format.html { render :new }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      binding.pry
      params.require(:photo).permit(:tagline, :image, :owner_id, :album_id)
    end
end
